Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104C025B663
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778270254; cv=none; b=qqqqCVMBErXRYKvFRHhneEkcDUteePpJFntnd4l5JcrfHx7eCypg3Jx+km6CKPI6i/ZMQnsEQFS/dqYtbc84EbNGQnGISF5Lrlk5nO04632llzgeZlwCzcY5wsVG6TZggYSxVcP+ZH6/Xaa9P6hDQOWQnfgQ+C+vAcKThrt+LYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778270254; c=relaxed/simple;
	bh=OPj8XQ/nYxV62xiHvdKDUvCMIQ2nk+5IJ1u1FVw2HXU=;
	h=To:Subject:From:Message-Id:Date; b=jS22+j3hOh5lPCPHmOYXd5PvM+4GB3bbjKJ6wRzwDE1WOJDgHEdg1ovTNQfW4Z0gTGRXPszTyLWGHCspD5E+EghJJJ0/rHuJANaR+FSpalqQ6QXfnVZ9/E2flFEYNZ2G/8YQxFchu3ccUhpoud2+uNhZ5c8836HL1Bb+qPpUbzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB6SP+9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB6SP+9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8622C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778270253;
	bh=OPj8XQ/nYxV62xiHvdKDUvCMIQ2nk+5IJ1u1FVw2HXU=;
	h=To:Subject:From:Date:From;
	b=WB6SP+9RgNsJnKSj8A0SkuT8l1wUVTEWu6lf9ZYHgbwm1fcoHjubrvjrDLOOZ/X7w
	 0Y6sV8shGiIfMx0B4WxiXQ1xhFhcHk+HKPs0NrYxa/+T9HeH6WNblNs4jbT0soXkvk
	 1g2xxSm43zYw5sLSvbfIC+u8t5oIui7yLXucG/mzNzkfbb+bvXdiCiRNVV3DJfuFKx
	 WPI20D7sCDNAtyf5hni6pk0OqioIrmfv21bMtD6QexX6C9GMl1t4bmQmO1cZy6VX8A
	 mxUqBGkSA4EjHq+wUletYjXhQVf73FVh2ziW0Os7UWCR/SMb3VOXiRnh0qpBWP2bxB
	 dM4GONkaVjlCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8BCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827025368.24843.17854189568972737243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e745c5a62aa3ff7a8a31bfd68218a8579c4080a4a6c0a74710a658af44fb349c
Date: Fri, 08 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778270253
