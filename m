Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CAD3994B9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769102635; cv=none; b=UVm5tvXen2mYAU4XjpcaTlzMM8T3rwWA5DZNcu2MVmpc28YMZUD4SXGHuyuXDs7jQ1x4EfwcWQ9KzkpDGwNaPIyUK8rqbOMvfRcPstG2Ig+ryyMwM5LDMWFQBRYKXIUglNZ7j0am4KAlsDOj0QAluEO8AqpS8BWxDkRPMdtG+Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769102635; c=relaxed/simple;
	bh=vNXJEfXSZfgjeGWe/+4Pef6tcGEv5eiu88kLPi1FejQ=;
	h=To:Subject:From:Message-Id:Date; b=RiTiBjohqIiedywqyzaqkk/5ScWwIfEmA4WxKqHcKXRAhNaE3dxQ3T78ozhLc7l5GGoNcfwwKAVQGXReWtTvom9m89oNEjG+4q69gAWvpJ/8jR03qQVFw441YsyQHik5Nq5VDUbBZeXIZ3jaPbkOm5mXLObDberoKzx4k5OYW1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l32xnN+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l32xnN+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E416C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769102633;
	bh=vNXJEfXSZfgjeGWe/+4Pef6tcGEv5eiu88kLPi1FejQ=;
	h=To:Subject:From:Date:From;
	b=l32xnN+bWZ2lupktoWgGXt4XcrLZVHQRdnEkSS22yJGsYz18k2pgp2fl78d/7C/A3
	 0vQ39if4c82UQKuXIVkv4S5DSjJjL14o9p4uXqMoOfZMwmYdpvmJfwqjmhiTWdqLt7
	 XvBwnW2G8mOWMaRoA7NAhpqx8ZuXjYk/zkikBnM3yAk3EqrUHWi2+W5I4zAsqSyAoD
	 9MRthLhU3P/N5BHvde8f+T0L1L2tmjkq291+wjrG1+HFwlUnzz1+ayOPM+iC0+mVae
	 4I4uVgpwWHJSDU/p4hzT+fJeGi+E88wO/mPLBxphPvgXRqdrlBuu2e2M32t5iP3R18
	 zeoOzFyLz2Gow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1BD3EE9D
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910263358.30482.16361351316808324663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e280a9bcc68b7ed5abdef2de364211991919eddcb9fd0036ca432ff3244b49f1
Date: Thu, 22 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769102633
