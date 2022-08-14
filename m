Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4778CEDA
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660486252;
	h=To:Subject:From:Message-Id:Date;
	bh=RK7Wz001Lj1VOSr/ypJj7ogeB09PCkvLmrNqrHujbMQ=;
	b=Sg2Ps2Q3NMrabKFvjLO1tpcvWnc3XvT8jab9lOjSNzP4MSSYsTqvizoEP7pnn/p4
	VZBaxLV2jUtEnLc2KOYADgSMZvemmR4/8D1l/1ueA6/cZBrvw0Ph2ZXLhjDnQCz+9Ll
	ZL53y1JcS6s6Ys+FFFvS086l8FhzuUX4sP1idkjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660486252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RK7Wz001Lj1VOSr/ypJj7ogeB09PCkvLmrNqrHujbMQ=;
	b=KIuj7udq6AmXaZ8w8MwX9nK9pzL4VW+jt/jQTcUKqP3DpWhBib7EvPDwBB18KS4y
	LrDpJhqxqfNZ+PNLmmXV6vq7pUElMpRSralaBZC0O4Wbv0RgdecIx3fg83w1pwj50fi
	/aXwVM5tPeoJMsm9Bdv9RQu9pOgG1obXrZ5FCEXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cb17825-a1b86850-db15-44db-9570-5bbb859875db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 697430a0ceef4d6223f530ebbbb07cb603e87b8f4235a7958ec5820261d55d67
Date: Sun, 14 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660486252
