Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7364A4692
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660071652;
	h=To:Subject:From:Message-Id:Date;
	bh=QFYrgdrhEQiXLlwVSqBOk7GFBLnidMPZNaRTBYavMqE=;
	b=Xpa0wwzaoGFLiLlwBCpB6WIs4RYx2MH3CSKKEL9I+e9zivoyFnvlz4htpM2cgcDL
	P2p3a/CRGmFClmORTx7iIhjplEORtFyrTWWSSckvMy2Pn9Ud0NgkINBA2lwHp/Dhsqt
	CP1KHtkpy1/9nHi7GeNKc8aAfCSj5tywJID9SAaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660071652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFYrgdrhEQiXLlwVSqBOk7GFBLnidMPZNaRTBYavMqE=;
	b=dlb7Sq/eaFDvvAD4U0YZuE+y6nVb2rHMQtbkGajUj1IezVAHWE5ra5/UOuhUlsGU
	q9b/9FB4TUpErLJOl+aiIiunO2PLGbLv4c0lMtSuQrkJEfhyRU/afTZ1fzqXi5ybp1j
	HBZaWB+C7JAATv+7OqV69gO2UQsI/ZE3H7BnxgLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283fb2cff-bc67fd14-ec42-47c9-8d4f-b02d6ab8bf6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb7768a955c74cf1df63f681625d7a16af8fe04ae8c6c329a422c5ea9129727e
Date: Tue, 9 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660071652
