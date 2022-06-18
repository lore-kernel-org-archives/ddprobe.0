Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04E27B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 23:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655596619;
	h=To:Subject:From:Message-Id:Date;
	bh=5mg5idg90tKDWh20JgdDd52moyAmysYkn4yabrIdDyI=;
	b=H12M5sdqll3QhlAg6Dr2A2JVcqwXK1lLFDHVLUhWMhD98IBlvWJRPgaRhPSMVEGU
	wqwEnhGxP1lMvRFKbr1Offwys46ATlv4nnZVEHZjzc8HAQ8NbsHcQL90KYlkrAEHalb
	XpqJJKRAI3klw/lmhITQiXbo0UvhU9Bm8REWP2P8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655596619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5mg5idg90tKDWh20JgdDd52moyAmysYkn4yabrIdDyI=;
	b=L7u/z8CH++T+Rj11BfCw4iCxlLUaGqGSHZ/YxCd24WJjrLmX/1uBypqeYdFZBV/8
	FI/XlY75lUO3VZNJKWpsWvycFMqttcHMkB0KK4VOM8AD8uN0yKw0teU39qv1ncssKdg
	yD3uFRer5tS1YkqGwldsTCcrpf/W41z1OOq9aurk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181793f95e4-981d8af2-a129-4423-91b2-a29ca6bc4430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0f842712c51e3a983298fbf5c1b18748e0b6a907f7fcb909ccd8f322145eff9
Date: Sat, 18 Jun 2022 23:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655596619
