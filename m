Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CA97E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660407652;
	h=To:Subject:From:Message-Id:Date;
	bh=QAJdEdlLdbg1aWOM0/yTNWTJvfgn/Mdzu1T5njJtqX8=;
	b=hNdi4UT+GzCfjor2JeU6W49p5n3sLtL+liFVHBdbvojdAwylBTnobb6RVfjvC7ZF
	8Kd4rEo1YoWHw+gZvyZNHeKKDxp4KdWCJHaYtyj9hKTBIFP3Vs/KmftYePrYIfdeW95
	eiRosf28pne315+v37bfHC5VZJs9Lv6V6r4JzoFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660407652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QAJdEdlLdbg1aWOM0/yTNWTJvfgn/Mdzu1T5njJtqX8=;
	b=JDqLEKsl8Ic7BukKmW73MSzR4KQ1KvXLEYXAYoqDO2A19AeosEwheIeclZSDC0Da
	IOZFtLSfHam161xM/1csf6DPf/sF99997okwiqJdxQGSCaRyyhTyKDdoGRTlF4EIRN9
	scjXP1e8Qhsvf7H5S7tgANPN3PYVck3XITwuE5q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182980220c4-52c2ff04-b0a3-46a4-9342-6266cda51fba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 534729af6b3394a26152512960aa76ed7302082f4de258772117999830d2e799
Date: Sat, 13 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660407652
