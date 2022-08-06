Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740B6EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659774652;
	h=To:Subject:From:Message-Id:Date;
	bh=YcDtdUESjDD8FPw7Sv5BsnNcCf1daI5NQi+grcHuAmw=;
	b=MLYD75E0S2qeYFQRUm1gVCbzWNtZ+5mE0AId3uWQTxxWQhvIS1nhPkHRSUzDVG5c
	HSp0JSTn36LlB2GhsX18NyMlVAxgLLtxizhnfxqzirjEjxY7Cw0AGs0A5CDjmVCaWgu
	k1Mw97m6utnDwRqa++1F8k44OTlf+9zUI2HD78rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659774652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YcDtdUESjDD8FPw7Sv5BsnNcCf1daI5NQi+grcHuAmw=;
	b=jBYSkU7G1LSSJuwdXm5HpkaGsfjCrdTJwHtMobmun9kJgvHy330bLIyeRlzpyhV1
	uACqD1C0tKPlPFKYg9j74uCWppnJc8h55Rs74MDM4MLVJYJudKushm/cbFNndVFx7H7
	+rK+i4ziJiC5gxjTGZOkuQKp9cW+7OtZ2kSBsiGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272475093-8a9e00e3-9040-466f-a9be-de27accd0cc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eca26e92816135e468378466b57295b10f41d89c553c7e38e59e554c0e62fc12
Date: Sat, 6 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659774652
