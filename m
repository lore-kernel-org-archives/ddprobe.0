Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D40460B
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645129285;
	h=To:Subject:From:Message-Id:Date;
	bh=XzlDcRcNFDasY2tfBrjILDuLNI3s01K2vMPDGwUNZhY=;
	b=hXIMwvC+S7LOVxbNz1MRlEQh58ay53ZoS7zzhOXYxYPrGqv3N5QmrX9EEufinVnl
	Dyk9OAycAzxgMwWXrQRw+vj8VQgvioFQPHrt+qaSqBCk8ajJ7O0Cz6arOozPrANcIxi
	D2V6uXQuGhetzRgZlS3G42wt9vFEmx9wy8RfepFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645129285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XzlDcRcNFDasY2tfBrjILDuLNI3s01K2vMPDGwUNZhY=;
	b=Jd4TtW99hsq/Y5rFdqgLd7Jl4p0CWpA1uvFycscIk4KEg7Bz1G1b2ijO4LwGoOJZ
	Pc5vYv6EiNOF1+f+1tintlHlaLAmoi3H/HB9YRHxgCQKX7dhmK6ucd4wlt3ENWOLvF3
	jY93i+SANnstDkqTgIkzCmosZ/SOgbVYLMGb206k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0958bc89-c1a232e3-f2f7-4c65-950a-3c2bb025f972-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ecf8a539f8013a7c20e6b8f5abf9ea77c8563b8e3ed14be38ab92a921117b71
Date: Thu, 17 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645129284
