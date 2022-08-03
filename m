Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC112597
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659558652;
	h=To:Subject:From:Message-Id:Date;
	bh=PfZ+iEd5Qxbs3VUWwlVZivAtPhLPkexgJ5d/9b9ttec=;
	b=MPxi4zyVxxRY27GGzjMcceLu7P68qblCBWlTFKXljvd3OcZ4PxCfr8k5yYzNztbe
	3QkTp2hGz50TlUsp0lLyrAprvPyjG3td2He3hd5r+wGnRy1L9QRzAbbb3ATIBQrbn4S
	vLkMpl3Xss6tPBs+uZN66z/1xcQddDeY84nCfx+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659558652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PfZ+iEd5Qxbs3VUWwlVZivAtPhLPkexgJ5d/9b9ttec=;
	b=OX7J9q/u5rqnQNse6WcR9UA6G5EQm2QIPFDNbnhioqbmj/EKhk87qUT27hm86LFE
	gUNYE0Q9BUUi/Y7cuhJtv47JiKL6hmBbBasYokiC6FYqZ8DcQDj77LLDXBx+lbGnTgN
	Qew5bHYAYjI8KGiZvDSrp+lj5EU5CZKc/Qh021tI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265676a89-0f5dc944-76c5-481f-93a1-176402acd8cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25a7190b117e39b62a0db3c2ae2be71e420ed6e27590c5b7e3aedc2f23e1f657
Date: Wed, 3 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659558652
