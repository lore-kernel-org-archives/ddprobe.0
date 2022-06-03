Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A584A28
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 02:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654222319;
	h=To:Subject:From:Message-Id:Date;
	bh=zXDg5LEC9UcXzj5kWh7G4fGGgD4nbQ+wGRorogAfNzM=;
	b=StKX8X18KoSNvsVOEOcEf5uHx+Ly2Y28no3Juf/OnyZEVdXGbQahJWwIwbgyQuu9
	d7V9JNuG/4zNhSAa7uslS/SlawDXpRIoIvfX4it4Dl36SotoXEucEPgZYaoH+yTR3+K
	r6b4xgNjpUVYi6GvtJoN3mijYbndm3ERjZ1PphY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654222319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXDg5LEC9UcXzj5kWh7G4fGGgD4nbQ+wGRorogAfNzM=;
	b=fO4/K6adXruJpUSrkxcSu7C0zGHH+iJB40qRIWbSThyg8n8hS09U0qLNICMS/f0m
	P9v8lthgm4r7Ady4ogfQR3kGVQGrjJy1xX8yvRVLGt9tDC3XF4DeKquDYmjHxJzTaAw
	DwhWnmePxAGK4H7hTISkmj/EXek3kvSG2O232JFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127556f66-f1f0fbee-e70e-44dc-9986-bff1cac35765-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c27990a551079c76f25cb995e88f91d66e9f8e4b9f0126265c5368e827eeb62
Date: Fri, 3 Jun 2022 02:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654222319
