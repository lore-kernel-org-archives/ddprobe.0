Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7597E7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661220652;
	h=To:Subject:From:Message-Id:Date;
	bh=O7MdXcZYryTewSxZdj1YsoHHv5IemQ3Bqovq762OCfk=;
	b=YCpXGCpA6Cw3yOGj3p3hjFDg3GJk5hvJn/8waH4JdvQjTAEkAXcKpXHPUBTX3hHe
	deQS4p/GSg6GBpyaOiAqXIvIsI3BPEoiymW5c8O1WhWxKdZl2JNDa/tly2mUZL3LxYT
	c8p1rS+Agjcvp4XRS1G3aAfvMdINIoRCdij1NhSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661220652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O7MdXcZYryTewSxZdj1YsoHHv5IemQ3Bqovq762OCfk=;
	b=FGrHFncdzIUhQ6F0GSTZrh83K46U0d1sbxWVF3QFMoW+ETs1fMkKpvNR/fA80GvW
	Uko6armHlPmWgnj5pZ+4VneR+TyrGld+XONhSYWpEWsaFcv5a2hYajg1FFH2OK/xCh8
	EBza+S8p36TjfkfMtAfqe6M0VFrVvdSpzKBdmVp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8778609-bc3c5060-1ead-46d3-9f2d-fde1d656e6d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc0da4181c90e81168243d89a275b881bdfcc81199b94cb827ee58f0de9125b
Date: Tue, 23 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661220652
