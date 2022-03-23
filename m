Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F9B66C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648063884;
	h=To:Subject:From:Message-Id:Date;
	bh=HEl/NhFVC/rfch4q1HIWq7Mi4A67xQ7Yx5TS2uiyQBM=;
	b=NRMWl8wKAv4J2BcWXUh6ugaYFFk2yEmO+qWlJpNAGy5Gym5XNPUWQBCVa8rwnAMT
	nC5xx6DhrUvlSee/NqXB/LCfXpi3BthG/7ExB8Z96NmrduOn6W3jF0nsjoOhBmqlpIV
	N2XV3Mtf/IejAZV0igdNf3rTRC4FfR9/Y1x/c0f8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648063884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HEl/NhFVC/rfch4q1HIWq7Mi4A67xQ7Yx5TS2uiyQBM=;
	b=RnVzp7j3BI0nAzx3Wtj2HvpenVfQUwioADHX+WXJzZxrxze3wJNHnCkUgKHMVypJ
	wEYGhCslbmA427+ZzeeHZHSb6gnLderaW0AMNxaeSi0LNBDHZl8p1JnDPuSxP+BcKQh
	G33ezKFO26ODsPdFHCU8GKTYzKFXtwrSf7pw/gU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8432ddb-40ae0c0e-ff60-4714-b9cb-ec64f63e0aab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3321863330bec7a23dd6036faacf84e35924691f24a369a34785be858d7286f1
Date: Wed, 23 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648063884
