Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7290246A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 08:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648195318;
	h=To:Subject:From:Message-Id:Date;
	bh=pXvy3MP/NOn93fAUnxPMkRuyF1djBsaVriF2QQOVeXQ=;
	b=iOdjcYROEU2x94Q2lY5tqTiFhBirtwcLIg+WfKq55fMQNvRpUZlA9NFKE9Bu8QJH
	AhJXp3ZwU22vZKlHIt/vwa4qQ4z3Tqv2ySlqZy/3klV6inHqCeAlxytwg/yzrBLMi/q
	KjPy1RP7E+fwVImpfcGJ5s/nfxd/sB5wY24CM6JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648195318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pXvy3MP/NOn93fAUnxPMkRuyF1djBsaVriF2QQOVeXQ=;
	b=A+e9VAhbsMR3jpnwq8Z0pFhe4H7wRciDLG4orcTBDTEY4OGVI4kxDv+WFlWnnsIQ
	gzJhFX+btuQT+5oyE6GIXuuNbRbjSa7MdgmlefWZ86Z8AccBmJEMesNhLsfnSn+rVgI
	RtIL0G2++elbc1OAhPeYotde9ETEU/zxeJGDoLhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc018b226-94285dc4-9596-4bec-b17d-72ec9b46f916-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba036f719f0c46412bfed284ddd85581b595fee0172fa384a4b47f69146a2298
Date: Fri, 25 Mar 2022 08:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648195318
