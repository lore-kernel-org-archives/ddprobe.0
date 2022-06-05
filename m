Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5577E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 13:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654436459;
	h=To:Subject:From:Message-Id:Date;
	bh=PPx9kZVpY03NHu0RVy2/2h/eOCsbMVCkvyjDdFq63Ao=;
	b=E+8ffo7oSbSdTYbpyWVvGNMdjMWb19D1qN5xiOa07/mKO/tg6U1XTO8J59nBiCua
	+LULfxInbyPC6L7zbpeGy4srhwTFA1lgWvgPbTxLNQaMQd3AwEHAYuxF5VYk3jioUjd
	Kmd9EQbgQfcYIf7BSkHB9LFphhkN5fww/3//uvvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654436459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PPx9kZVpY03NHu0RVy2/2h/eOCsbMVCkvyjDdFq63Ao=;
	b=ZnN1ohxZJ2HWGgSBGZgWXlAB8mAJWJnK7pQ3Og35zn8237Na7jf9xSDRYxMuBZjU
	RqVzfnArc62CXdVZdX8y+jVficak/QGsweA3Fohkc2d04nhYMNNl1tjO6pJyXC1drXJ
	94dmlVzUfVFAlXdaFococs1eVgpfFaWdl4MAI+JU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813418f330-e75f43dd-9b43-4e9c-ad3c-80e21a52015b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cf6e6d25fed98ad738e1777963a71ecfa67b84da8b936578c44b5f99cf17f8f
Date: Sun, 5 Jun 2022 13:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654436459
