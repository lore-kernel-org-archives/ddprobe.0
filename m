Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F6517F7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656233812;
	h=To:Subject:From:Message-Id:Date;
	bh=6s8BlD7IJ+RF39+HfthjW5ORFqUrM6iqKd/sdAzrJZM=;
	b=gzzffYlN2vF545fo8Zcc0cj0YVUPtbT/2c1OT8fgrnM7VgSimupcRh1ydrALLOGy
	qE+DphZUC/zsYfw5cRDcFdrdpEcGW8pOTS/icETGvVIOLxT6buUnYZDJH4tRtbVGgRm
	nLfNXV66ph8bCAU2QEH0J/Yfl6aIFlSNzKB8swIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656233812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6s8BlD7IJ+RF39+HfthjW5ORFqUrM6iqKd/sdAzrJZM=;
	b=O9EPwuGGlz7Hata07SsmEm4fOrtddyITdfMMv2yyBhUwRNG37oI7jLUUc2OR4D+m
	DGHv0bVLjTdFb9QyRHgDfv3kmSyk/CLJEobPD7lELQyxYsLtxW+Ispl62+qzfM+5SCY
	sqE4k5iXhiJ6TEDYDZw0CVFjVyUBG7tzj/sLq3LU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f3a6125-66ebcc79-cc2d-4921-b275-4a36162457e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82f8c33d742924f563bf178df14403463b857bea7449a973dcac8bb1e802442d
Date: Sun, 26 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656233812
