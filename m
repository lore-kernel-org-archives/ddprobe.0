Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF9D7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646601384;
	h=To:Subject:From:Message-Id:Date;
	bh=AfTUi3+VHGvdCfFkhHvQ3LNtNDergbIby4gL/mL9wAg=;
	b=MG/LIJ4vh/Dj0uA1kKrRXAxULEAuHBZnK0ej2oxcDqHo8NczJ+bNfw2BonYyIEn3
	LOBINVKxFqC+80UJBQH0rIU5rI6Bu2/NNdtXLQClDcrT4iGP/xmSi2f98w5n/uyY+vL
	SukshiwQndS1dk2FyvzGH3PwYij+i9H7FTdN8Ydg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646601384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AfTUi3+VHGvdCfFkhHvQ3LNtNDergbIby4gL/mL9wAg=;
	b=C3kWQgvD8x93OjhJL2apJ2dFz6//uyzgh7JfysmTkqxV3oXPBJLx/20hPCGy8Qrj
	5RWZGKXB0mGXm4hnQt6CrQL5ZvvPauptoB91Fos9zqICQ0eqb7HAG3gBEBerEFokfiy
	EJZOdoyA45wa6OE3GHYPQH4fkzyOydzFGodxP1MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6117335f-d4ee8230-0a12-41a5-94d9-c7da61409c65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77ee7e98eea97ea41b3d4f0724f30b69d3ffbc721693dee278fa6e5401e09f87
Date: Sun, 6 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646601384
