Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AF41848
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657461412;
	h=To:Subject:From:Message-Id:Date;
	bh=+Uz+MODWuKXfuYS6j5lbiX4wZFlxW2njkK5X+vlJ7OU=;
	b=JtbSU3Cs4J3+jP1ev+Mpdw4N0GnFlX6VC6+bL4Ap5SZBbiEaKW07XfTHBmIjGaE0
	BjWr0ZKFzFA8AqQ3+ptaLlbZLS8vVLuo0ARVZ2/IKJW0Qa56dYQE1gTnty3rBuAj3El
	LHoxef0akj06fx844IDmXl+TFs4QHLaTJpgGr7AU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657461412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Uz+MODWuKXfuYS6j5lbiX4wZFlxW2njkK5X+vlJ7OU=;
	b=ewo8ohGzXKTK8K5NFpyxUp7PmNKxcImOByvjeX/PE2dSyN/UquQ2MK2DFzyf1WZG
	8Qk6Hb64lsVERrVmuxX88+KEB1dpyhCDBdH12vRmIqXzMmJzA4xYHTCCBqQ5jTnE3ZS
	2uoipRqq7lOWlKj0lLbmrELIavxX92tmOtihXAzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8661213-e056bc5c-d751-44d5-8788-a750861b5810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8163942593ebbd9ba79f33bdba4e51ec1d651fa2ed39665c032d1243fa3754e0
Date: Sun, 10 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657461412
