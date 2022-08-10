Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4543317CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660122652;
	h=To:Subject:From:Message-Id:Date;
	bh=mQ7ZD1voUHQRXwFwnKAGxrma6rShJ1ixdICMCozarQs=;
	b=RZEO2nSWlvJhfUtbsgZWxeurcp/erxHZrzrYe5YLKLsKRJtmBZhL3xChynsWW8xY
	UjqKPZtF/u0D5JYZIC1j0fGNBb9TWGLMa3/vqkewecsjE9ZbJvoel+0RiPqbfeVkI3P
	XgIq2FoxS2Qepctim8ZKRBQSaHr02ETMhjndKwOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660122652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mQ7ZD1voUHQRXwFwnKAGxrma6rShJ1ixdICMCozarQs=;
	b=CVvywyx+QQpkk9lULyL4dO849NI61VHDNGMI+XJOot3i9gdT716Q4dD/qhDdrEE2
	Njw+jpj0BoM4PNrm/se+S/Oyk1IJYX/xOhoHkXCBdjxWkSssw8jXnsazQPt0u2uyuKj
	+Efus4O+BZ4xO1ad75LjWRoxnWkCF8jWGakXTN3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287055f8f-2f78232a-0cc4-4ba5-b82c-1f7d9ccb39f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e04ae30e7648acdbe1547f931d2262bc1566091f17c735d50016b5da432fb8b
Date: Wed, 10 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660122652
