Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFCB62F
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657967212;
	h=To:Subject:From:Message-Id:Date;
	bh=+vw26PpXM1DwaoCGrBayhefQVUawgOKqC9n28/9axSI=;
	b=eDWyugUf2MDLu5llGOpXJ3lf8SY7KpYSuubGPowRAnsdWmvm2hfMBhPR42n2NQ6T
	zcd7OLD1hB3bv7thTHCoZODg/+kialSwlsPjm+T2TtiFcdR5rBPyGi3usy2qy16Ejdg
	zlPxfegNXGEXrP3Ht9ZYPogCwbuSqGZ1d6D6qWVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657967212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vw26PpXM1DwaoCGrBayhefQVUawgOKqC9n28/9axSI=;
	b=F73UPWClfbp4Cl/qYahTTHKyTxJ4cHcVLfzaoYhbUdYHzencGwvfYM+9nfRRs82T
	BzDKNGYZbHOsAjTSG9XsnKu7Mnrhk72qlczXbaoWxmw6Q5pz43fnyTPsbEu02PpRGtC
	UY/dsuHEpZBx1vZO2qjUiZ9KP33m8xZeAR2mhVpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182068bf730-9b215120-edf3-4842-ae92-ac036b1516b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f44a63d170d4a0ea4fd7c85e127ee5174663eeb3ea48da5ec30c65133ed7c5a
Date: Sat, 16 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657967212
