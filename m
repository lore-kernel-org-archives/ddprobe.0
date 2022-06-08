Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC2E320A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 16:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654706459;
	h=To:Subject:From:Message-Id:Date;
	bh=WCJD/jgh3sR4288+NHJDM3nnq/TqCGOkZLwdP4MItBg=;
	b=JM6scY9iI/Rhn0oSuv+AMVj56MEL2Ss5R6ZsQK72CjJ4sZkRJhe3Ct3zS3Mo+nXK
	kERQDWiMrjovzMbPLpENfQhOSjmQEuKEn6BvSIiXf8I2D93TukwXgy684mnFosNs7gf
	Hq/BKEUGAELMXbrlqUhEz7ZQOXsGS8pKqQFSWNys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654706459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WCJD/jgh3sR4288+NHJDM3nnq/TqCGOkZLwdP4MItBg=;
	b=d2MwoMOdS5Y2ZVV54fsds8m+hhCpOVMvXRpkS354X6Skq4KY7RBNfZ6TSw7WX85k
	0S/sCk84nup4JVkyzR1CWrFOL5BletDhxJ6I5OI+Q+KCER5x7nDlDqOv18ToHFRCqaW
	Q5W2w8GtBxE14RSbnqpf54ACkvzz0MsR1pz1xAoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814430d299-8ff70a43-76e7-4206-b7e2-6874ce836d8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e968d7e88b2b1206c65818a6293f46d3c23ff2ce45e595564f1edbbc78ad7779
Date: Wed, 8 Jun 2022 16:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654706459
