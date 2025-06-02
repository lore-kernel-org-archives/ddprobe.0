Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1E184E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748828394; cv=none; b=ZI2NOwXXrOsd0i/Dp+oAvk7pjIIaWDP/3LYu5j4OT2qQW2wdVnLhB8/z4ctwYmSEKyFes8rjK+w1+KknO64sJsXThe8AlOK+BuS624mMMhcY2uFkD+EUuGtli0BgGefSMUrVNuUp/5+HYohgwMpBxpnrG68gEmvyNNw+Sr7NATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748828394; c=relaxed/simple;
	bh=3kR82OJjNrGQCDaOLvWIaqtyJopt+P5eycj0wSKorqY=;
	h=To:Subject:From:Message-Id:Date; b=gzkZoaURrg3IKonbetMfM9L84DjnOJcQxVSDmjB++YrxqJCsDk3ejVhFhC9oyqmlB3ujKzPRDpJTb0L71tg6zA2aK2C4AYDxsusOpGXZGFH61In6Vfj3Elsw8QdawWSxpJSvTD6fSrqwLl1aH9Jr51+B0jNieGItWJzuWoIVd50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFVp/+oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFVp/+oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D92C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748828393;
	bh=3kR82OJjNrGQCDaOLvWIaqtyJopt+P5eycj0wSKorqY=;
	h=To:Subject:From:Date:From;
	b=oFVp/+oYpj7AW6Np2bUj6MxnURCFikdLWfhD9Z3nh2W0HAKjnzB1XJATHSdp10S9/
	 R8dAf0NwJ1j98+CKx+vN/7feyI3Ffmo0mAhVsBBsFEblEKLJkDUyAHjp3tRHmAqfMx
	 JpQckqMB/rPghaV7+aihEWpyTVoWTSSGP6KmCE8+aa6T+E06c78mWXgTVrKXtz7sts
	 vRX+M8+WZP3s5iZRFHhwuMyh//Lngux9DjyvQRiHnF5aYXx5c0VqfM4QE6bgpFIO7i
	 jHdEvjMIAi8z0o5c69OgOuX5aPr5htX2Zlyni16xmYPgwh03S+H9JiRCD7tT887F0v
	 H/6gbAZrxh8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F7DC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882839358.4144.12595212309927775654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b0b5b9741843a4cad134e627d2b15c9cee5c663887440d6ccb40fe16d9e545
Date: Mon, 02 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748828393
