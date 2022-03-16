Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCE32F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647446485;
	h=To:Subject:From:Message-Id:Date;
	bh=w6HsUFcLSU/XNO+BECqX0BJF74zKle2rCqz4MziPu4k=;
	b=g00xBkRrpkj3Tf3HANbVoPwB5Rq9CgRDwZUeWybkgtieMUa/tVfM04/q5R49L57S
	q/di3GTsCOKLxJ8n2Chq9g4g5ccuqVg1gsbi0x57oc4JN2y5Op3rbzoTX+EdlXFQ4gI
	UibsID6Cw+4Eo55dHSBmY9MYGd5dNN2LLY0C6y+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647446485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w6HsUFcLSU/XNO+BECqX0BJF74zKle2rCqz4MziPu4k=;
	b=XRwCsfkjVyeEdnznb47nJ8CHaz0eAb4aTqWzE+Q8FGx0wDY6LRbTF8QNLB+fclWn
	Dqa+a4KBBYzNEsiYNgbQbFIVfF3AC637JXkqdHMrCFrnXJqnu/i4+ut9fAaPZL2Kkaq
	R6d1uUlDY6X9L8DUIaEjUEAW29tMtIywQ+1q70HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93766717-09af4158-78e0-400f-9da3-9b7c000e9278-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dffea52cdac6c15ea27b8d5c54b02f1f804089cf6843a09ea75c1f1f976ea9f
Date: Wed, 16 Mar 2022 16:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647446484
