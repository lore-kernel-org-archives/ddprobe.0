Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C92E1DF258
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749857995; cv=none; b=S9NOE8DJEzKTaPO39Zd9JdV3IiSEEDf+HqBPiD9pGXwBgOA8S7cXUu6LZsSOMksDHu4S5CqCdzoiVRYJGcH/HgeWtpfPaJ/zqfRiX/uGGxHjkrcGC9sSZ62qY8eKygc7hXds6ae4+w8irOCyBvVrXEW7OKKH16MyAxBhsl2vweA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749857995; c=relaxed/simple;
	bh=/H1LLPvebOb3RgE9yTvRwQ5tkuqDPtbhW9+g+QmZVSA=;
	h=To:Subject:From:Message-Id:Date; b=E/ZH0Of1wVhmM4H4q6c9axqLeZdSvfBnC8wNAQlIsc3vPVDgF0IZwb+8dsi4Es52uA5TCQT2MWyqmgMVYKF9ksjnU6UE0WCbARXPJPYoDtQ+saJouuAX7HLqyQR1I5LTqhSgBfX8Y8UQQMuWix20kLKk2jnW/94SovwbB87MAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aduH7YYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aduH7YYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749857993;
	bh=/H1LLPvebOb3RgE9yTvRwQ5tkuqDPtbhW9+g+QmZVSA=;
	h=To:Subject:From:Date:From;
	b=aduH7YYUejSAwc2nx3mMOslm1CW6Z9V/SLyDKYreSiVeazR0SYrejmjV1nW9ynmPT
	 e/82xibzFjFI5uzWeIIGCNiMYFnN82+5RAlbHiuNfw6W8M1NtrBnTzhOQUG4qe5q4X
	 SRwpnQXai5jz2YaRNpyY4xeDOrzc300GJcLTG2bm+PlvEMVdhjmXFYqb6el8K0/uc4
	 YHHJXuoOtBe2FruAstf6jXb2jq3sp7Qh7bwvQ1UboD443zVJ6NZAXzC0fHvhgR4sSn
	 URLTng7/hUlqnA0K/QlQ7LB5Zk0sDsMj2qI4wCPaFte+w496Lvd2QpHSz38JPNUElD
	 NlwRd3LK8TCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92814C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985799358.1699.14586328052818466466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4058a612986e052cca7018bb0905ffbefaa989dbae206cbdda78009b80d4f973
Date: Fri, 13 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749857993
