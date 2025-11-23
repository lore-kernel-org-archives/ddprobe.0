Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178831F936
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763861514; cv=none; b=oFWWrRMgFXUfx33MYIUUQyJXmNffldJXzoW9XdRPhbKq1jOpg4JnnYHF61oZVZ3rXwvv9KAcXNTYM8WfUuZCwGoO6TyQcx7KGwO+TxTHpR+Yu0Y+8Mg4RfWFxqWGUi1SYIficRHUh+gBJxVgLjsvn2WG14H+JcJCw2Kae9iASZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763861514; c=relaxed/simple;
	bh=8Odt83XMX1SCe+GLGrqIZ1kQACTZRlKkghMxvrDSm0E=;
	h=To:Subject:From:Message-Id:Date; b=JUF4c49YJsAksISWmUB+EWr4SZ68GSXMK/3nsSbuNmHwPUIQo+0//kCGJYtMHPv97wbcLzMFjc+SGU9V/AgHyMRhFoMgB6EjJ4idq/rSpauRinSaTt7DD5rw/Y4ls1t4F1kvBInzuV/+g7rk0brTJO+PdWWTvublotmeRwDm7eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWfYBjcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWfYBjcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FEC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763861513;
	bh=8Odt83XMX1SCe+GLGrqIZ1kQACTZRlKkghMxvrDSm0E=;
	h=To:Subject:From:Date:From;
	b=DWfYBjcAPeqPwcZaTbJii6M5Y9Cm60JAtGL1cT4WENz6OYE12bv2rSDhvi0OvDJGg
	 7TjuvhzqUr2TSqveiIUWTLdDYiMtT+FrFUDIqJR/1ntGlMclz/d5rCgPFaTfJ4Wd4U
	 JG0UKD0vq3EBMntaVN8GcWyLn5WZgQ6IseGmMpGXC9lxqwIwZMjTHdd89AHTGmNg7A
	 GTJDtVBlaoCA/YuHvwfkB9JIiw7VGz4poReDpkpuiuvusLiPzqzgJYbvMmoUW4+9i4
	 DSQg7+ea+PaQ3913uru1ZXrrmjIcOQFoSk5gvX6M8YPkYVI2OKgfy35l7zYDSGfByR
	 5cyHcxK5ogBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912ADCFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386151358.30200.6914323479985220044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1487f14b65ea6b8311d8b5f486cbb361592a955ab097a257a937582db94ddf5
Date: Sun, 23 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763861513
