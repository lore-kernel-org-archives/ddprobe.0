Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE241841
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659837652;
	h=To:Subject:From:Message-Id:Date;
	bh=CU6ouT7RNP5oUrE9npNlbKcFNP87/u57fe320p5e5Hk=;
	b=lFjiydGXm9ZKt/RX++e+uJkg7JE27UX6NhMcTuFvQKGO9oUcaU7zhQM/fv/717vm
	LaW2oQEDigqR2W5sjqCPKp/4oc5M5JjkBeldHyCiM4uuYjqjy0CE/u1U9vyD8K7KROu
	GXthdysgArhs90qfru1/PBtdED/cwSh652Y2LDFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659837652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CU6ouT7RNP5oUrE9npNlbKcFNP87/u57fe320p5e5Hk=;
	b=Ocr994RPzAyCtPzqgll3d4t0Zw1kEBVZt7peUCirD1ULN8/nFtd9nvnJE9Y8WboB
	VDR8Ik/HkwyyckhNrYdCIqN71vjV5RqpVodV/IqYTczeOCJ7l4puT3E2/VvGyKIbgbC
	DuWXobPjisahPwdM23HiNve3Iur2G2R1GABrlIzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276089eb0-a6ca15dd-ca7d-4a0e-9879-c399b592d1df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d21c3889223a0c55ce9d589c7ad25c01d1a665e8fc4347fc5d24cdd1d8768f0d
Date: Sun, 7 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659837652
