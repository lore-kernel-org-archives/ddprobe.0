Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A8423D6
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 07:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649834758;
	h=To:Subject:From:Message-Id:Date;
	bh=ZQKvPTnIiMJiY5CX+PBcrUjEIw0DqiPswhaC7EeZMuI=;
	b=RcG+N55vAmVOeoyB5EXrLV9Qu5Ima2Ig5FzMZ1cX0ukIGcD72gQNyY9eRCvzrdoV
	Biq/UPAb6i/qbzXx616Cc1ZzLSEMatPpMjmJXr8jDQPgJ/bnhddeiAtDqhHjCOIIswl
	PhYuNo1t9OpGFMubstpBymk0nsb8pPguN38rct3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649834758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZQKvPTnIiMJiY5CX+PBcrUjEIw0DqiPswhaC7EeZMuI=;
	b=KQCRhD3+je+OPXbT9FpyizCSXVbP/28/Ey7fRDaEsrp+GLEsSQRWu36xA1IO2/uT
	ccW1Pu+d2rf69PIp1d5H/mHlqoecjOKpi/QXROGNCas5oqIv4YjqukdwAqlsuWkAu41
	ABvR5fziMSodMlY4aK8kb2aGTpOh5zzH1aBruzBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021d09084-0a87589d-656e-4487-a650-41bc3447e3b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ddc6c6dbce8edca3a64e3e5c206a00887cca5f45dced6769c656027c3eb511e
Date: Wed, 13 Apr 2022 07:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649834758
