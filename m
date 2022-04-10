Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C69A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 02:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649556898;
	h=To:Subject:From:Message-Id:Date;
	bh=nL8/dlM0VM84qoXVvcsjK1acAJ6kbXIiqevvtAoRLpg=;
	b=faRcrR6tIU2axC7e041cKx1iF10Q7u1kK+/venx93r06VUfGpCUSXdAtj4r4OsDi
	2l18QhUp1kfk37VM2Kx+NXpRBtieTJQKRFXomiI1b7hlot64FVP0ZeEVrShmhTPrpB4
	8N899ELTS229YxdjBkC9UUVYsAKuJj/dCPZMChTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649556898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nL8/dlM0VM84qoXVvcsjK1acAJ6kbXIiqevvtAoRLpg=;
	b=A2Gj6qAWy7i/mzmzGW/Khp1VdZ46IBmcPs8yJX1OsgPwSSv4iDJhjvgB6FEG+L+d
	lFfighLHbPhrGJkMJOhWcIuk5jZ4XAjWIWSVtvaePNp8E/yNA+pc4lqvc3k8Nrnj5wz
	8M+cpkJNjIDSVaOiDLlWXUWNohdJUBjp2SaFMyMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801140c22a-ebc4c511-d1c7-4c3c-a9c2-2e41eadb4470-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 425ca9fefd816358b2d00620235994cd0e7fece34acf2833af36e2ce1024ced6
Date: Sun, 10 Apr 2022 02:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649556898
