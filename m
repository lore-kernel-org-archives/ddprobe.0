Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59C666C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657150012;
	h=To:Subject:From:Message-Id:Date;
	bh=97tdpHBS+Psluv/3Js3dkloTJmY3085gFmsimGoBHEQ=;
	b=QhTJzCQoNoGi2mnsCB1LFoEUeamskqgs7eZxfUoiH7DOFKaVQGZNy+p5VCkYDuPV
	j7zuyaYdbajKUVP/J3kVU1W5cwj5lipUlwHyuCHJcamF2LJJXESNoMOWuCT414fiU+T
	lyl5PhP6M+3AYH1WX8142RhBSwHnMeyH92V1dJKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657150012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=97tdpHBS+Psluv/3Js3dkloTJmY3085gFmsimGoBHEQ=;
	b=axmSo4jgIZnfOEf9xLgyK+DVUX8Zt0gqsA/KA/IjkhSNThFNjcB6AIYICVTZBIi1
	1JGvrqE434kGNO6YbNslj5nzOVBr1jvF+Cp6yk4l8ne+RZYkizqqpfZaPeOKsR/VRAA
	mVoLBVswfB6wWm+LTy8UE5LPAnGBei9FaDbMmKtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5d67b7c-b671cc65-c552-4db1-8635-89cb7b70f326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d1ca9a88d4d98bc6cebaab4224523a994d453fa7e499e3b8b822acecb5e4d0
Date: Wed, 6 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657150012
