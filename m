Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F200D7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 11:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648985758;
	h=To:Subject:From:Message-Id:Date;
	bh=g+IpQUVrNktjA4sQ53Sm5SiHySkoDoToIWinqKa+XNM=;
	b=Co7whwnM/M/Uuv2+Lr/xBJTcBoq+HW2riXdp2xB6RBbixdoj5ufIbjtVj8YFtp3H
	K2Vf6Hb64Wzt3lpzLmf5sybMujrDu+fGIyRTD1WEmV1zeZ47YMPpuWDpdyMu4WsKi6G
	pduAb0OCFf7NcY1QTzn2O+DgWvZOtsQm+00E+sD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648985758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+IpQUVrNktjA4sQ53Sm5SiHySkoDoToIWinqKa+XNM=;
	b=hDyozGJB1+ROhn9WsdL1wjXWCyrlKJJD0Ki3I/brDFEaAB+c/RX91d9PD+GsI9C2
	Dj4PJhzNFlxwfrynLpxuOb6Eu1cvkS3zL487DAVSP/bRZnKuw3PbYvLd+qpudoibJV6
	bVfFpC7pSAsfmICdXIn3tDe6Cm8stAeKrTZ1Ko3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef35da24-09ce0a80-fa59-41c3-873e-1f99e34f0bcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff893dde21d8f4e2909647661bc054e396acc33af690d81dc58638aa3f7c680c
Date: Sun, 3 Apr 2022 11:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648985758
