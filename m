Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC8A7E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 07:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653378599;
	h=To:Subject:From:Message-Id:Date;
	bh=v4UlzXwfHnk1dypTDAw3x3hwYroUqA4+ZccH70+Vu5Q=;
	b=lOiK0VWPO10qsIIsSMx0gsH1DKtV87e7l8gMZqYtRGO4aIhQ//srL6e5R8LxJJQx
	4DkaEApZhwIQDNM7mWPK6qs7D7kuZlasUqlUxvBMUYIrF88AYeauDok9aeuc5lemVPy
	cugm04Fj1DCwByzwzzWnm5P2BWtNxIksUj6lSOpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653378599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v4UlzXwfHnk1dypTDAw3x3hwYroUqA4+ZccH70+Vu5Q=;
	b=ezvWVt2uVxwEjAivxxTIh7+Sco6UBtaGuaZoBt4tjLEeIAs8tq2/kIqeGJXuwr6g
	UC54FK/bUNVp4E9WQFAoT0H/R9R20sJWaNxDbAThdulnMfjWg0wnvqdgu2DsB2XvmBg
	BD2Wdb0iIbEfzFNcSVU+sKdCVluxh34CdM4JX8uU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f50b4945-27daae11-007c-4bdb-953f-9cebaa50ba2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8b6b230913f7a0dd32b3acc579ac7897352bb04db571fc071e6af7e8bb858e5
Date: Tue, 24 May 2022 07:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653378599
