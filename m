Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ED117DD
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656967012;
	h=To:Subject:From:Message-Id:Date;
	bh=jji6RUb3pXLOIN3XhPW49mmj+/qBIa1s7hnRpipas0Y=;
	b=VVFp/aqfwj8T6NB8w7HnELRgZ3kytNluS3pvLHfjcNHH7O56tIVs2Pv4Pm7QvXZW
	5ZPtv0InsO267qySsC4/9zUvdd+TIjb8YSNLkwbOGKZ65wHVfDuWL9Wbk+nndfRarHU
	pfXWgjoK9CcmyQiT9hlvICU/l0KFX3pv5vbTwcFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656967012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jji6RUb3pXLOIN3XhPW49mmj+/qBIa1s7hnRpipas0Y=;
	b=AnohwEv11pQeVnRslYzidiPQ6QrQuZUcQc+Jf1jVAqI4qUtm4M7+gj/IEubPJZcK
	aG6k2zNNSnzqav1O6UGB/ttaJr8F6BMw7ieYiqd4TDA3rkdibn1nLY1FrNdhYu8x6U2
	pxeW/HKL71wQhg3ckwA0gpzmuxFHmczfzIGgS0Qc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181caee1fb8-96f8f058-5137-48bc-87c1-9682a36713d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38da809f6fbee854950ac2191f153a1aa3c6815fdedd883692260933fcc20a35
Date: Mon, 4 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656967012
