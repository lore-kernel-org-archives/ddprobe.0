Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1722ACD6
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747382395; cv=none; b=DVnQKs4VltbhU7qRh+cGkifZEyuMovF9mkf0/tYbcZ3A+6gxH2Lk7CUBn4CDIojsRDzWpdbuXHGU43aIoe/tSyGYPZJMji1BqX+nR7KROqEWyqn007QbuxYNZYFvEM2z7vHJW0CZKKc4wz/4zzwC0dD05W0SYuBevOT25wqKXIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747382395; c=relaxed/simple;
	bh=8E73G1CVn3WXYr8gb4t8vEFloscD+8U5Me+Ie4lTfgc=;
	h=To:Subject:From:Message-Id:Date; b=YhMaRbBdG29pU9q2qYhxid9uOwAvreEhs1grzSDWFMZaGrbbhvHf6dkMeUKXQULctNz/yBcCQ7e3Hj7IW25T/boVoYNrLumeRl9SgXvMfJG2CchEVDlVuVxUpvUt0PLMjhV9nlPpEWejW5G+Iehbt6KK+8rLFalZ2IyMaiwml1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvsogCuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvsogCuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747382393;
	bh=8E73G1CVn3WXYr8gb4t8vEFloscD+8U5Me+Ie4lTfgc=;
	h=To:Subject:From:Date:From;
	b=LvsogCuYLYNLC6r4DPT1O3gCZNLbXIokvHfssIBPlbbTtdUVvbPfS+pAXeZyKnk4R
	 yGcaGYxWS5mU2cnjRE9zaiGXwGR6ATWKh+O0rCPRdSgqhFPXhjGNThZP4tf8eHHny5
	 QSy9xLh/jEcjlSUw5gGRiyXnqVf3bejMvQvd2/rSBXpkP4QcUfnJPMZTut/ddb75YG
	 iYm8uWKOhvIVrSAtXsUJiW37w97FBQT3QbIrjVxublSv14MxkalvupeAGVAhgxNe7Z
	 9nFEz1dJ78hjC+vdkymlIEp11q4PdGJ0FwkMRtAXc6USmfmCg8hCungcjLczlBypyH
	 R3Hq8fu7kFtWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110CC3ABDD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738239358.16797.4628828574966308602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952d74ca339247c5832555418a91646f4eafb4088868edf6e3192cd7d7682099
Date: Fri, 16 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747382393
