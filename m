Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473231FF1AE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737982554; cv=none; b=ng5Ue3WIYDsdwYMRlJI3Hod/EKYqZ/dCH09xGE59mWssAAb6lJmTabOtwj/O4uOSGUjPfiPIwkF3XQ/XyE2SAP2UObVtjbudQvQ+nSAjssUsVULvRg7QwBSbd3CXIAej0ZrF1fgB4Fcjl46GbDkv3tpgAWGTXgyeCDfrQ7kfYoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737982554; c=relaxed/simple;
	bh=aPb2kJViz5smyPK2Gv695NzU1XaLLXWuSQ5lAHr5qLw=;
	h=To:Subject:From:Message-Id:Date; b=qL3ZmtLOTi5arGtKNhHoTWVg+K98tbYUp60TNuRIXDoDDiSRQL9C6zMwfhlfawfmRNTutxOanVDbwPEBFax6PodKiFZPJldcW+qAJYE9XUB0abwilLASJ8JFT2pkrKYfHk4PPjsLaxx5FuxcAVQYx9vAxZfM1VhRJdOvrMrNLoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKHRvpUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKHRvpUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA20BC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737982553;
	bh=aPb2kJViz5smyPK2Gv695NzU1XaLLXWuSQ5lAHr5qLw=;
	h=To:Subject:From:Date:From;
	b=IKHRvpUqfPyiyHhRRlqSuz2KCq84J6jNdz4B7926oYHM1b3Fv2PLl5ztZuyROC2SU
	 7+pMDIR1lHRmpfB061/F2HcGrtmBBy1nsN6VRilb9WWXOZopz+w8k3XR5S4ak1/Rzn
	 B+9FLHoFJDwpz7X2LXpmJnArYDLisd6tkGRGV4mfp2USTZ8w7dn2l6m4PrAzx1PFBW
	 UP1qRGtk3KXAtJ2PCZf4I6Kh5Di9NvO3McoSzX/4J/XhVvTqT7K8jfNaIuhHMnCYBv
	 YsIisK6CB9rxY0co/Oqipkl494BOV4zljEnyzynJvH0bDJZbPQu0b16lxmlUVrRyeq
	 TKlzIZzfhZAYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA3C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798255357.789.1557563750552750063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f60206deac8a4b7dc4fb2195befa9dca0c1ed8aeced0f13bc48b7864b285b2
Date: Mon, 27 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737982553
