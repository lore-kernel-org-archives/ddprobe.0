Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C6F3D98
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659208852;
	h=To:Subject:From:Message-Id:Date;
	bh=tg6qf3j7sSAdNlUyW9Se9uUrSndjGyc7RctKLtWHEBg=;
	b=Dk/YCBfGjQxYAkXB2xjoPph44igsG9KbunCFXGnzegLZoawlOnDy/hiMsBFvJAhj
	Kxq0qPqYzE5IikzMOeVartK24pBwgi1W0+aoMvJ7wNbQ7BAcZIEQDzEC4AUUoJfJYR+
	Gfe+dx7P2z+HmdNaHp2AhnSrlLBVfl+H+PDVsteA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659208852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tg6qf3j7sSAdNlUyW9Se9uUrSndjGyc7RctKLtWHEBg=;
	b=ESQD+Ck41GD3DZ3wS+X+7wuAVvm3Fztxj7Zt9LLX2Q9LSUvk8nZxrPP93yhpSzJy
	urk6Ysn4iwEG7DrGNAuTlqin/VnaaZfiINDPFJ3r24gkIYdccMhnpa/nQTVsAmjWlOT
	d97tbIyqXWA0PlSEPysMZiCF4YKiS/HdfWPj3brA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182508de449-6cc89676-907f-4c5b-b946-12fc402e3fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0555b024d3fccaa86f292910c6dbc786692d2435096e83faf80a95e113ba76a3
Date: Sat, 30 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659208852
