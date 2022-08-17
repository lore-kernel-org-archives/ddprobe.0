Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0EC7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660724452;
	h=To:Subject:From:Message-Id:Date;
	bh=1AbQ2KdE1ZAa2FjPIESFVvByGtOv6XJ+Pr/86r5JmF4=;
	b=EimQt0yXyqZCVlPGDCVLVrWNt5vT7PTPVDw1Fmi0cT34PR+tuKXlaKA1Xy3PRzcP
	Aba77vDblKjvzCAXG9Vttm+3CeKhh/z5RtGjuWY/AgMoupVP5K9QHuz8Ok104/W4G+E
	T82D515AvWgv9a6VP+M6SmoGwy6B6kAoBz98nwQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660724452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1AbQ2KdE1ZAa2FjPIESFVvByGtOv6XJ+Pr/86r5JmF4=;
	b=CZfXE/v8tzYSZOnsSF87+hLpDV+g8DhDNAMDTM5t1TbhgItx9I7CIqKiL8sNxVWL
	IR7WYd/tkziyXLf36Pn1o9EYr4RKV4hd4x4KPRE6oSyyqHZQPknwXtt6uoL8UQDMH5X
	No/QdB3mVh2KLKaOk3v40CwQrF/Qd/towtCYWdkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aae41cc5-cf1c0bdc-3711-4835-b2ab-3e0e76d03a2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 646a538a87d5e8c48adabbf54081ded8de2a630d3518b51e9ea98fc5f8642832
Date: Wed, 17 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660724452
