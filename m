Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061F61FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656789412;
	h=To:Subject:From:Message-Id:Date;
	bh=RIFlbW2o+H7yRrbfTGXTYxuySRO6viQJWr/klNFyrM0=;
	b=Jfb4W4lGoLQTelkyGmOLmY5erhfFJBTFPze4T4HwdZqI5aq6EmrHKQ05nC0EjrQa
	OWwLbXDJNXb4+8JxJAXFsYY+rczOwvSpHuRjvEYItiqzMj5BCKUwtDmYMHsa2pnD4I8
	qu21eLEllPV2ZiPV4mIafZU02wxQfUssc2yx+g0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656789412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RIFlbW2o+H7yRrbfTGXTYxuySRO6viQJWr/klNFyrM0=;
	b=DU/dVHoRBUb55pR5RaFfH2wAm/ocIgybvQ9HCXMYw3fq0vi/75p9VkmQHg9Ivzs0
	nVQXOUAHmWGKS6NU5VUbMgcVpiq1Ltv9GaZn2+X663Terk0YP+vrK5Jdd4Yi+FqpwNC
	OAPLwNOOpvHCRoJgDmdoSO8zl8TMTNWMa7WN2m5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c05829d6-3450558f-eaa5-49a5-b090-92d1ff1f2d45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fea75d163bac439aa969770a64d716e76d0a8c772391b0967f80c9eb8716583
Date: Sat, 2 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656789412
