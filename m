Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5446F620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 03:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651809418;
	h=To:Subject:From:Message-Id:Date;
	bh=XyqmY9XuahNFaEydU0V7tsev9TbXmiip+KMQ23gRBdw=;
	b=eysN3RAXOgc4Aq8+DmM4DZoa2s1TOVgtmaTJZePBA6W/XlL3IlNOYKugfLBQ8Zul
	+/9tWloJIZuGjChTx+KO/D4Uu3kXDIgxO4eOszJQSzr9fKEQ05iXwF+lu3jq0EkMUPj
	jq4lcxhfL8pXbcuRzssKSwHd+BUDf5WT2G5kXRJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651809418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XyqmY9XuahNFaEydU0V7tsev9TbXmiip+KMQ23gRBdw=;
	b=QlwytNDdW9Fn7r2s8lMPJ+n/bPuGAGh3v0I1eg8hfst5kEG6WhcOCCPBtSVM8gxM
	RhO2ydQggjQoB75VT0x3lzw2O8sOCiRmkY7ckKuxyXkj8a/PUwrYLeEYeDIMHQIfT3u
	X8pD2sgbnpF2qB+0dRk144IiqOjXrff+AZWb/qns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097837c69-706b73db-33b7-4259-9baa-2585092f518d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e80f515aac6d3c79f966b0436e2ccf66a6ff3f0d988afcb1192733f39d4b3a11
Date: Fri, 6 May 2022 03:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651809418
