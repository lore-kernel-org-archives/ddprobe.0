Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E375510E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 01:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655861999;
	h=To:Subject:From:Message-Id:Date;
	bh=tPD1tMDK+C4zFlJYFxwFK20wLaNO5HB6unvboHpgAGg=;
	b=A30MmWqdjWU4rBumCshphIzuWUPNOXnxQavHJ+2bqLE558q3ca1E5vqmGquuMDhY
	/mTSmBiuHsi0eMDyPcBrGOHpu8jHdiiHPnKnSwuryEcPaM6ix1C7Qbd88l5ujymUcKh
	VU4WAWIrOicXtP8XADzhX2gifOUPpsyhDc06Hgbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655861999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tPD1tMDK+C4zFlJYFxwFK20wLaNO5HB6unvboHpgAGg=;
	b=Vpjoylo4PRBPnQ0b9kfvVnUc3ACsnjeBZ+v4LcSVQp2qPnPD6fwURn1wbSBt0Th4
	KH/daNDICOW8bP25XOfF0pqizMUhwiX2SStVy196bP/rDPOVyOESSygaXdEf7VeEg6q
	MUsCIxvaBL/QeiMrY8Ga7i+S/ZAIHaebtouj1Nq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818910f694-b16cf9e7-f805-4d41-b0d8-42066cadf62c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7591502cb0be74d2be7e5f880cebae0a331346ce6d8cde83bf8c75c283f6ff18
Date: Wed, 22 Jun 2022 01:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655861998
