Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8977A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 09:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655285279;
	h=To:Subject:From:Message-Id:Date;
	bh=bPsaMsaXP4ZTb3GEbFT2I1Dxk80U/i9pNBO63tHMNIc=;
	b=bOWJbZ8iUsOif8Pn172+xRVg9+RC9E+QMKvTcnfTNov9IRyEk4OjBouRK+s+/xII
	a10tPmilK9hujMqm9Wa9efwzVasRJQ+mscTirGY1tSaN7y6v/NtZaA1OMq4zkPIuG74
	i2/oUt0MVQ+UYSxPBlEAGRjLqrNz5yjxEg7PdmwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655285279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bPsaMsaXP4ZTb3GEbFT2I1Dxk80U/i9pNBO63tHMNIc=;
	b=eRw/M2didzetvl49O7Ce9XgtC/g4SqVJV1fuysQg1U6NiFDXQKfEnQRbPu5PSOX8
	dd7aE2M2aHXpa+RDU/t7JdgNWXkRq9qge6uekaXzP1J0InDyqLbHP0nMYNJwKpG9dB2
	VP7Sl/qcB3kxzAEG/YE3p+fM377CYJTk3PfM3lVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166b0ea08-3651ffcc-9d64-4270-a2ce-b2f1576af5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83cdeb27f8b44c7c052bd00b1c3fe0543942343bb5e438699b0aa9f9acc7f425
Date: Wed, 15 Jun 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655285279
