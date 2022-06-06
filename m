Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AEE7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 18:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654540919;
	h=To:Subject:From:Message-Id:Date;
	bh=YDDcGj8rQOmqvzmE8bz7I03o5rN0bEEqD5qyIrnffNE=;
	b=AqqTv/haUSND7UR4Itcxf65INuf0+E0zgKRcjEhVAIv4FTx4DLiiRS0cxqSXZbPW
	VuS7EqpwbsQUsElka2CvAcSgYcT9TjCzMs3V6DasKGkb1U6Z7G20o8lghU2OTyquonZ
	zCKQRAMoMOyr5Yg+rBzznykf3DfG0avd3anT3vnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654540919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YDDcGj8rQOmqvzmE8bz7I03o5rN0bEEqD5qyIrnffNE=;
	b=a26pQpT8c0bVltNtVgJxUKKbL7y08Lm5+80d4ofsaUGA8AEyrJ/wTmyr9G26EDah
	PtVQyYM5wZ/ybXDTUhCw2McBxcd1sgE/xTm90/LRNUMzLvEFXkQ2qBVq9XhiGaKRsil
	rMDS461bNeDVJhVu6QAXQoUetvA5JMz4BW5ZBdS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a52e1e8-c92b251e-1fd4-47a8-9117-6b134146e7f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7335231adf379eb753707f3c5d85aafc06521050de4e309c5bddb1819ae03a90
Date: Mon, 6 Jun 2022 18:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654540919
