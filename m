Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569DB4C96
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716018143; cv=none; b=jSr367T3wl8nvNB60JfDZiGfQ0b7UuZRLOdbRhAuU2UzUypU0sj7YcZcaRiZqfHM9JJu0aO/COEyJpSUv3vG0JUuoKEb5V2z1PJa1ux2VkhJBCGm0FzEQjzgm2uqTP9/Z66+9AGJDmIRX3Kx8NsvcSQrIbMPjgj39Ef1jNwrrto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716018143; c=relaxed/simple;
	bh=9ZmWJLIB4XstX9e/c4vJg676/VNdB0PcdZ+WH1+rsCE=;
	h=To:Subject:From:Message-Id:Date; b=J6Newr7EhMK5GpXu1amgDFYhZDKrEwMY4MrRDj3YXC0hHPhOPP0I3i9PhMbUnUM4WpdjNvfqXG2W8b5BSXHw613VeuFRxLQsfrmid12UH0qre9nsgiBf8DrnJR3RP/2DrLPZZSGbn4RyhrGRibVXBJU51wRyUQt/SO0t2XqNZZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glTYfJzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glTYfJzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52ACC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716018142;
	bh=9ZmWJLIB4XstX9e/c4vJg676/VNdB0PcdZ+WH1+rsCE=;
	h=To:Subject:From:Date:From;
	b=glTYfJzM5hkOt8s8fmIodj+6tDfjsfKR6QluDTWd1iBHH0rjTkM2Oc0/Up9/ulpOQ
	 lFks+wG49B05eunuPyhpHRydS9shO5EzBgGmyvZcJg1HpyRD8mc8hbmA/Dddk3m1Ss
	 WtGudayttsF1HlMwuNMtIYW7WKPXMLgCQcUVWtyK3R6rtXq2lrPh+Pu6Q5Rbkllk5r
	 0L1wTQj2DlpBgCqdhwG9kY9neKSbjNhh0wGPXytZqkRPNzx8W+5jIoWiuuKC8qvmyM
	 EfFt72BGU2+ntysuenEYkfS2VVvOSLwZ4fsa29WhPFXgJCJFqDjZHOqyCNEZxcsdKl
	 zSG51ZXRmMoXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE837C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601814275.26516.16213462136128843799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3f749439fb481d67a91e8edae980f8840ad500f065f844a643efeb3754156b
Date: Sat, 18 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716018142
