Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA1C2565
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 13:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648559878;
	h=To:Subject:From:Message-Id:Date;
	bh=0R3C+px+TQOaQvzpMWWwmdFBOOx5VWm4mf2yM8dKS/M=;
	b=g1v68OxTQQ2PKpHPDc5clAPZNYHpplx9oYPfkBlASd08rF+o8uvRyM61Epvx6MXP
	nWuj1dh5Ug1rUudtddNGhP6vJFhWmhHov5qsbrn2R8OGsgnwYmKA/QkHzOJL2DLefNT
	kFku/GON8Oq9j/eBiZvHtOCM8cE7rBLAfUop7kN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648559878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0R3C+px+TQOaQvzpMWWwmdFBOOx5VWm4mf2yM8dKS/M=;
	b=ErL4c/FkPtbU9v7fbRDJL0r48Q+TD/+S7ToxB4kBRphKHH84DrPOCmHCIGln86Tk
	LCTSvt1uqZlCWksAvtwQOlXgyqalO4PjgtiXAurhuDZmiF+TJCYLVPrKh5KXD6AJxvd
	iM8VMurflEPx638it69Iz5W5yhxuAs57Jc8fbaNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5d37082-79450851-d7a8-421d-8e99-58b13f41ae4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b91eaea738dbebd66780e59a8a29513a8b5396407a3b5d6a596870f81515a05
Date: Tue, 29 Mar 2022 13:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648559878
