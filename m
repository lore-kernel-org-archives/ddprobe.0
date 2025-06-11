Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FA81EB5D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749659393; cv=none; b=gwj4xk16PvDvKGwhlXyXO0Mld69q1HZSX/+xdt9qITUizXBHxY898fRoEjU8jWSyxryl0nqkU9NQHbn2yg04Tdep/uC+T7XtbAeTjNIt7GfDpOeG3xGMFXhNIEWc7oATN06Dr52Sd+14f97MGuZXsZ4Ba/yFUePr1Zqld5XFFwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749659393; c=relaxed/simple;
	bh=Ji46+WnqPvtDpI8v15tbxWubOc76iFxE8bPTHc9hxhU=;
	h=To:Subject:From:Message-Id:Date; b=tl/Ogmrz9gNjiOesiKdgRzpbYbSfu/jW807OqrqslobJ1T2fUZtQ9ygvTUc4c+MrZyWMeQq9euE4xm1/PPBJQSqItOqQgfSfrbxOi/fsqtWL5D2FZzZpFd3Jaa09+XBXV/BOm74f3TVtIf2wuG0U0tk35CaqR7W85NNOJWp/MzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Odtx4yYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odtx4yYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0383C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749659393;
	bh=Ji46+WnqPvtDpI8v15tbxWubOc76iFxE8bPTHc9hxhU=;
	h=To:Subject:From:Date:From;
	b=Odtx4yYCX3tIPRx2X1B/t685Mpa5oJSgkW37ML1ruA8FsvK9c4uwfpMXXYEDlhF+c
	 jgvr3FUnWeWxMUlwlx88DtuI/4Z93GYhGqFZ4arXI7ChGNyjQ18JQxmNPH1RkS0oMD
	 sgPd8vLo8EVtG1lYSL4Y3GoYnbfAaaKDz/8gXRsB5k6VHJs1mQ9cy7Zzx0qoITaYmF
	 qWPTYnT4IGK6Vm00PMIzgmxMi6BhSgz0HxA7u3S8B2NGHcHJRRkQZOOOmRLiKxec2Z
	 akrTn+oI133L5xzX0TcGK85fnx9ObtSVR4s1PpRMJtMZAiWqPYytRizMNVXoE11fEU
	 sbIMtdcanUpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959FC71137
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965939360.30907.8267962679565806983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a159da18b1cd540d8a0966770e22b778f843c50cd43b88d4b387692c79b935
Date: Wed, 11 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749659393
