Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA2120B7F4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756501794; cv=none; b=m0YOszDj5nQqn1ehIS7iBw/bMeoFZ/qqcm7p0OOXNlKJVVR69dBBHOzvr8Wlktx8/8yvh6pQv8W/c4ScKcvkI5/yWYZUIBwtsXn75l7+dITWgwv3lsR0qY0Prm9rGmz89NTwYVkIWVTmRHA/HE8VRu6Xk0UXwd3alDORghllfuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756501794; c=relaxed/simple;
	bh=/QUevENUsgQqro5FBaqmitgoh2m40tXoLEpl17LwQXU=;
	h=To:Subject:From:Message-Id:Date; b=UYy2uuMLU5+s7TLRWSYEN7Zsi8WZT5q5e0G+Gt5QjKeLwDxgIxDZk/m11ZCrQsHBk7i5edyp1y0erwhLWoBep9ZQrPCev2y0QN3ywteJsQnVGB9NmAW4K7WpeOkImDdo4hcBHSw+ELOTuF5ZgSJkP5/ZY1goXzfYGoX2icjgYuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7GMtoCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7GMtoCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756501793;
	bh=/QUevENUsgQqro5FBaqmitgoh2m40tXoLEpl17LwQXU=;
	h=To:Subject:From:Date:From;
	b=t7GMtoCR0EUJbpyFHz2w+0230ZgLSBOH4pKNZLk8yVnGjQ0I/y0d1oTlopsNdW2aB
	 901CXzxHfCGdadHrQSVfce0rAU7F0oOZKgWumKgFyi99qWmIP4ktn/mT9G3FZG0irm
	 JTVjp1z2xmU6sGLH+vihAzn1Ae9pLOl2kQIFM1xfNthmspqYm/70hB9FfBeZHVYlSf
	 SlRASlhqIKPglBMdlQYrMtBIEANKieKupGwBfRZ+FIeE8MJ4B7pwUAc27jYGCSkKmU
	 dQj2PGNZTVeDFTPq4iR7Ai7xrTk1NsZ/GivVOc2F558G5drRS2jSoqx7yI/A0NBb7u
	 EXtpOt7CPb01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE35CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650179358.8280.6400153957030009957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45426b2388c9f0325940979e787b8bde21016021230dcabc1a3bbfe0fff34c2
Date: Fri, 29 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756501793
