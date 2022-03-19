Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC27A17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647699985;
	h=To:Subject:From:Message-Id:Date;
	bh=X7X7zMHaTDCRegJqkdh+GnvNuD1oH4vkn3v57felNrU=;
	b=it7u8bm2POrDDZb/UUWfdbkQ5Ojvhq08cAm/97TCupUwNdq0Hpeb+q/QPibvtYMG
	/2a3UdFRDLwU8BddifbMt2CTYEJsoTR9RMuRCa3Hi2csGelXoB6PGG+SxKqjUlnHm08
	+g6wQaO2tr9Am6FLx9iHfv9sQKbsVrxgBK/Bmh3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647699985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X7X7zMHaTDCRegJqkdh+GnvNuD1oH4vkn3v57felNrU=;
	b=T4c3kHH4WHbY2r6AYme9ocvmBXiX23v1n6a5zYozdyqkisN+2r93FfQCjzxbsIip
	QDryR84wSs3mMDXkxF8JBtlEtMoXZHgNyz4zFQtrXBE5vxIT/nNueGLISsl3RsrXIPn
	FsPf23s3D8Me/tBNvG2fiLduQhsc89d3vuCbil2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2928150-0269491d-091f-431f-8b48-dec8a597492b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2bd7b077001b3ab0be02dba95c0d7ecee30c397c97effd269015dd680506e6e
Date: Sat, 19 Mar 2022 14:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647699984
