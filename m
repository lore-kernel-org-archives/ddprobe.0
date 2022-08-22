Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE23361
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661143853;
	h=To:Subject:From:Message-Id:Date;
	bh=K9Hdqi9eO2vrZ6r7Rs9SUD6WqQWS9pAusGXlavH8HHo=;
	b=Z4eNnGFRTuR0KZG6ob1W4wu/s3IWSku07g5ZpIbrpjs1egOIYt7/Yo6lYGiTMsMa
	AHkcRsYUQVUDwDeotAHYpdL11jKFBT2CPeDhl0ioz2PNEvNhhyytkk1E5GQoxSKZJ0Q
	xhKPw95Hx3dV6Dr842s6/OBj2aciJcXENpAWlIks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661143853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9Hdqi9eO2vrZ6r7Rs9SUD6WqQWS9pAusGXlavH8HHo=;
	b=A98HOvjlbq65NQycRNAciZ4e579vX8H8I2Zs+RSNE5A3zw7VbaOuC6TXX10MOOi7
	lvOAF5sQ2pyzl+sHISR19FDj1uA4SYgD+yZajXLJ78wvg2j+SCIzDFfkdnqQAivnAvK
	y0IvP/soCn5PkM/hHc3PIjZa9C37MZHneo7s8tdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3e3a604-f72d2f20-ba10-4418-9a56-34dda6c3c876-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a4daa65a35dfbbe41617fc6fdc507fa778e73f1219965850709fb58cfe758f5
Date: Mon, 22 Aug 2022 04:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661143852
