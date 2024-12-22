Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2E376
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734827154; cv=none; b=SrFsD5TQ/1HiTh125+Y2r5pHpGxfS7RTr7NeybRjxbksMiRiYREbR2w2Wl1DnH1gvPCojmoDuQDQYONTr1YOj2dS5/9Y0Oexn9KTLaNzwD6dOLPQc7BQPdJlJyTuxeCpcvy1HBY6I044Ka575W+nRD18YpIbpyXzEjDzL8uNiCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734827154; c=relaxed/simple;
	bh=RDcGMMOlzRY98eqAcTRo1+No7yQF7C7InJrcnTGpi2w=;
	h=To:Subject:From:Message-Id:Date; b=QGP1jIIpS9p+wpjt2ACH2e/jRohXmF+L2k+OdY50Tj7hUltTPbQyid+mWKw7oeTM6MKP0s0Fi55m9be1iLid9HKgSDKfbFMRlXKoO6NO/oHgA+7AHTInLHjb+M5DQrUir6H5YAs4GYV1zDT40Lbg8f0AwvkGCyMiBjdTr3QOdPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+oe/hDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+oe/hDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BDC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734827153;
	bh=RDcGMMOlzRY98eqAcTRo1+No7yQF7C7InJrcnTGpi2w=;
	h=To:Subject:From:Date:From;
	b=h+oe/hDFH+YpXl3t5Lv5jWsecgv9z1WhCvOhzKTFHu6vK+fXSY9d3MinfmZ3rb4wp
	 gVGCVX1AWN4rCNXSPyzJDNKa+PJWhin9xDtLT17akln5bqOOMAPJtVlcysEs9msWbp
	 dXffYRU93EKIUmBJ/aGPXQb48X+O8bZXgFIk/Yy2G1K2lKeTkOzcag49Cr9zJXUCWc
	 +62TJ9/RXRKu3zC4yD0XkutnzuvIyEH9zyH8UJ9YuqjBeq9Yvi+yWVGsjFhzHfnwhV
	 34gxBSqO+3VD0zFOdVerxFjdwyGarQSj4QA4tk5WvMPbj70ipnos/WJ4LtMvOHMW3+
	 9hzfemjl/RoVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F4E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482715359.22400.2717351928725525126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab5f368294bc4075604efcd05816e018c75b07aae794ae6dbdb8b70012c2053
Date: Sun, 22 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734827153
