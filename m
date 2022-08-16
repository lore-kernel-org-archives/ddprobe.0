Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4F23C29
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660651252;
	h=To:Subject:From:Message-Id:Date;
	bh=rWdhcBik0bQGWxCt3hUNdx14i9KJ+VNsH5Yb8Gp6GPU=;
	b=ClrlLVMeOtU216r4EMxXNeMTOWN7/j55kY2q37gOwCgsEgRVEd8ZL5OHhE8dKgLA
	DtG1B0fkiY5idAV/Pie5/6/OZYyUDKWn6U1AKrKfDjMD4sc7Zz8s0+rz8+5Kj43PNEN
	o2c7UqkuGGAP+eNY1SkZ2AVOSA1JK958Fp2ZXV8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660651252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rWdhcBik0bQGWxCt3hUNdx14i9KJ+VNsH5Yb8Gp6GPU=;
	b=Ko1ccIxmlXa3prITzi6WBReBGbs25thfTDoNlRX0a99im21SPdwfsr6feTlkqpAC
	vLi4eYKlzYxQhIe39n+zClwW/kdvpclBKetngLtyzdeLXoOuR1aJ9U9KL89Ej9odDkL
	VgApaekFCF9BWcmtBFBBJiJPsSH0kZpGRLxfwV7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6872b64-759e132b-a362-412b-83f7-d06bf7404445-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a84e2243b70e35bdeafe492b240909d918b3a4e9a646d4e10cca4055a7a66df3
Date: Tue, 16 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660651252
