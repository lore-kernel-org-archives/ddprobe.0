Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F267E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660349452;
	h=To:Subject:From:Message-Id:Date;
	bh=dscBk5/Pw1qdOhzhBUItF2Ik0gT0L7+fhg6Dq/7fHyc=;
	b=V1/RgXH5+U2m11K+7GTvOSW1cSPI0dzGsVv/TRzZB4ZphLoNk1SrcswZGBXsmnE9
	RtzZybOFP8oPjIGOoVmD6pkGrLJHEWJGxbu0iGqFso3CW3IFvxwhsVUOlSoOa8AlsfB
	lkTu34VqQV1sdZHMQAW22DJRZmaX8fXJY0L7wG78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660349452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dscBk5/Pw1qdOhzhBUItF2Ik0gT0L7+fhg6Dq/7fHyc=;
	b=bg9b8uyy9KbqOdfKwwanHtQHLqW5YM6Gd085BkuZDtyQD/2YV/PVJaqq2gG4G09T
	ZL20162SC9yPS4MzJ/zq6rnT1jqfYJq12PfWjQNIw8KRktsaSTQQ57MqDJB5UErEXYT
	t4MTcNJBndqhZHob/slgW5O4x7ACeto3fXakmy1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182948a111f-f43f9992-be17-468e-8620-4c5b1d00c8c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d53bf6a74935becc8c4333637b50a68e42db3bdd6966c3eaf4e375c9f91d77
Date: Sat, 13 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660349452
