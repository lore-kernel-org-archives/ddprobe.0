Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC2015350B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722265554; cv=none; b=ipVchzAJp/2kCyZRbPY3jNnFdcLHSV+j8v/IyIEpDTBYarGPNyGsdgpVj291seYrqLlDsfhPu912abvp2L6uPwH1InJd2h7ZCEgvQ3u9EZSu4v4Fg1gYD4AYox3LX6skb8IefXSFxh4Ks5i6kq4/JSn8BVHAzFjsxj4A6aKnqAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722265554; c=relaxed/simple;
	bh=oKBHd0emk4e/yA5/vrz5ORfIWQ0EOiwbgR1OfK3RT3M=;
	h=To:Subject:From:Message-Id:Date; b=ihWFRthwQpQgkD8dfIKX+GOdo/kFUwJlBRBqW4YnIg2JtS4qTP0jLJlL8vB0N+GtArVcyEe5xIGo9cuHAVwpbq0B7+GQQEVD9i7G6RF3qc5EZcex2ptLgTIWFFEleuecc2IZPXoIfVNmDf1TQ//hm1VLQwotcxmT4D/bDmvfOUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkSzpGNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkSzpGNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C297CC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722265553;
	bh=oKBHd0emk4e/yA5/vrz5ORfIWQ0EOiwbgR1OfK3RT3M=;
	h=To:Subject:From:Date:From;
	b=hkSzpGNnjPgTjxVF1lyfCh90aVd0BS5PA1nq9agj+bEOYOVhU34sQ4bsjdGMnq7Sl
	 ipSVAhZ6zSyYtceIg2AvE5Va16Q1o5N6y1fbnqhAMXXZvLf2jUmN8jC1tumyorInSA
	 JZEVQ5Yf/DIeYCqGnaBxr+6gNog+8jYUjr/T5Z5VuhNf/GGedlxx7x9MyjBDs/QcxF
	 EE2glhm32Dnqpi+7AEnuq50PyfotTb0Kk6h02kZmFMBLq11dRewNpls8R+a5vLaM7A
	 8oyzGq1gTxGjIaXjNK/q9J7lcmiwJ0YrtQ6OVuLjazwps+tlVjG6yg3pi5PWJ/ixRy
	 vLuDWWoMkH1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86FBC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172226555367.30058.10727077622414732351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0995d0fed6ddf43b9c14cb3629d1817b3e5ef7a84829f52dc97b3973183eeb24
Date: Mon, 29 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722265553
