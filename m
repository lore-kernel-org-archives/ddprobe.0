Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244D1233D9E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776555454; cv=none; b=GsMaw+FWllDNeZiqrtrNhKuBc+ABp+ckDxF/n8pVwS/qLZuf7IPhtSA1ZAn616Y18TGgIlRmrZcwCZqKBFwCU2IK+J5m6X43esrNsH5IQYKADkk8wYABhzYHGSZR4EjI4v7HbBHhv5CEYnVpebKQUxDSv26ILUCR1qlwT06Z5C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776555454; c=relaxed/simple;
	bh=WoVeTIRKGyiFjEWzSAapvdoVlmUGHs3bCorBmxk9r/U=;
	h=To:Subject:From:Message-Id:Date; b=V+iNrUKy+nhSa22bdSv1tqQlZsUtlO+u80gV06R5aUPc2lKbA3LO0VsYv8T9b0yCKAZubkqdOMbHf2q7CQowKWX/W1cKpAs+LIvJk4XAmAHM+cvlAJY092bNarJoX99c98aDm4g4TYD+jfQIFLfJGqzKs6tp2oWQo1hp3Kpnufo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYSpPjNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYSpPjNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED7BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776555453;
	bh=WoVeTIRKGyiFjEWzSAapvdoVlmUGHs3bCorBmxk9r/U=;
	h=To:Subject:From:Date:From;
	b=FYSpPjNBrh1VJdSTf77JntFuLkrMA24d5vGxf8nUJGagZYzWw3aRVN9wJOmZZPkbU
	 sVC0YkmMea07t2OsaWX3z5t9C+Nus9IrEV5GKDSZ2I+m4ITrUsIIPxZC13E0lblZPo
	 cL0A+/QKH/9FQLmMkMLQti1JsqQ9WXA+YiPqPeG4ZJX9xO90e/7cXtAlvj4S6d8UEr
	 GKbPwKLBeoDQvo101zUg28lWkye5K5vs1FEg/7h1A0gyG81QAwjxpQHU0Mj2+sIPEr
	 NKpHbajOrSyOuM2KA8f2Qzk6NwaGP5MMbsm34EoyOc/XdtEhMkJoQcniMpLIU92li+
	 ROk79McUNeXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C5DF99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655545369.9151.4326739455136451148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce871be8e31d250a9c1f51b3c24f224a4930b4593722f96b9e02871bdb50674
Date: Sat, 18 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776555453
