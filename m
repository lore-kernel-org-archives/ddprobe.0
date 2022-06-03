Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F0E7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 06:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654235999;
	h=To:Subject:From:Message-Id:Date;
	bh=q2O26d5G/dSwKVzeVOMX0TEyalTciMCzqQO45bueE64=;
	b=cIvs8yl5Q/JBkx2W2MvIeceKmCEAG41MzKmOCGaJ3zthHfjMMOdirjaQhpeLK9gw
	lQgcYq5TLiDLhlNpYrXjaOURIv0LakdFMvuocEKwWG+XL8aNATeC+OhdB3c9dPh+Nk1
	Q+7YqkjRWLlqc8VNbKVQh1aUwmBHR8L8RlCcjV94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654235999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2O26d5G/dSwKVzeVOMX0TEyalTciMCzqQO45bueE64=;
	b=KJRaWqaueVeTs5CLNpDrAaqPz8CWetm1QT10aoinjEPmvN3V6oAUVsmaDDl1rVxp
	4T2fPX4LaIB1rR3Ew7o3jVMLGox+6w79XOizcnM9vKpB2fetAknczXXHbfqFy9vzk/F
	78NqIo9USXerhZT8rdJHlRZHLsrq1UxPvOZTSEeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128262c2b-7643d055-bb27-4ac3-bf99-02f180f7045b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a93eaafdaed411586116b92274d3bfb9111c0d76b85118185aece09316350220
Date: Fri, 3 Jun 2022 05:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654235999
