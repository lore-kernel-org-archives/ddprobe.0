Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050FF137E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654383359;
	h=To:Subject:From:Message-Id:Date;
	bh=RDR5vNEQly36rRe+heHiljKCCGL2iwEQoGYiBbYQoUM=;
	b=NbskO3RpobdSq00eFNfXb0tNa2wxmEbMzsxPLeCXJjggLa4mjEUNduYzVm/6Qswn
	ITRDtozkZH8+kDnNAL4qJWyBNK6EEHTGRVpW9jzxpgDIpB+y4fY7kV8Iz072D/YWowm
	Dlt0OH6XC9MCeqDe/H5houoofI9bS6itHSsyJTv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654383359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RDR5vNEQly36rRe+heHiljKCCGL2iwEQoGYiBbYQoUM=;
	b=HIooTDSgJa5SJf9SA2t3DX/N33G8k7nv7YpgUJAPyn2N2VNoqBd7I4MC4roXCtls
	jX5CJ27bVMZ4rGsVSRgFgf7um3MKiDEiOoAAgVarTu8MV3x8OKKaMHbydxhjRpHreeA
	I2urnzCY0wP92eNTT0LjQablmFkF2LYeZZlF/a4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130eeb537-3701fa23-cabd-4dfd-9923-69c7ef5633b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 920198e67301b95a702620ef60d27c26f9d5d2a97a0e164ab39b0806535457dd
Date: Sat, 4 Jun 2022 22:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654383359
