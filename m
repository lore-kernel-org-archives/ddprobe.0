Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C85F622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647146184;
	h=To:Subject:From:Message-Id:Date;
	bh=G/y7sPbIDV2jKQfaytC3pno3R6x3DP8eKVRDevBmg98=;
	b=NCzlooMoaB8W2jHpizyyhg0JObUAeH1rjbigu44TRoPN4w89kig7lTgp3sXVZPrQ
	nKOvO3SCQk5vqQs5te6kdt3CoPk+F8G4pMLNahFigKF9P+meM3ZSfDVVUVCaZJwAgH6
	K1+zV0ydHYoTFPRzJW4/T3ENLaqN9p9tHMrY6qb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647146184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G/y7sPbIDV2jKQfaytC3pno3R6x3DP8eKVRDevBmg98=;
	b=R2K0AMmLQokECXPvub9L8T6mn9fQA3sYl2uvkIm6hFUCQKEb8lEPHV5MJhrY2Xvf
	BIzwSVUWstEznrGCGWfCzge5ORdpln5E4kvOhiaEAvnsj1e6me/cFtcJDAitg9Y+Qxp
	oWv7Jly+QuiGPTx+v122dYZAcx4grYHkc6JEdC1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81903014-9b5ab487-27ec-4b20-8a78-b3ff93e19a04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4914a0ee788cb338f0fbad8ef7d244c05942b24e55525a9ceb2433793bcb1ac
Date: Sun, 13 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647146184
