Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137B95391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660664453;
	h=To:Subject:From:Message-Id:Date;
	bh=q0tel4MumZOVVqryb29jGHE1DXA5+w9p+IFL0ZfCiVs=;
	b=a8Ib+uzFQkf9H5eTT6jZZVacJO3cKRzJJt1D64qcSMqtBTGjj/xkT7oS2mLzA5kD
	4L3oBcVh3IOaakF3G/KPr1Fef66jP20okX2iSbvo8yPD8fuWFMeMq4swiC4HYyG3iCN
	Cmt7Q16HsJqBYgcbRbT4CHVFP5qj1d2IsHRJyyr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660664453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0tel4MumZOVVqryb29jGHE1DXA5+w9p+IFL0ZfCiVs=;
	b=jvNIKKxI3HX3yfdwg72iwlUBVHKzleRrCmj+//YJwgbKoUmd82kNAS/aLAe7WHwy
	TWjcP7AOCbCVGGrCd8zNCz/JjBJBnzKB+Ggb1zkS0iy6i5An5qx32FCuksi1jfibVNd
	DFdpKDvvhGn+O5+zQ2QQPd5E2lA3sMjWhxKxwTfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a75095d9-87d56da5-7922-42b3-88eb-44a5ada4c10c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 897ece8eb9665fc6eba26bb459e9dd3de0a2d6b60c4a7248b399996d88469736
Date: Tue, 16 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660664452
