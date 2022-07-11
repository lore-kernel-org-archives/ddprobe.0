Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6538A4420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657562212;
	h=To:Subject:From:Message-Id:Date;
	bh=5SLhkXmVCsEt0KVxTTIla5elz554NhrOHSIE4P6Tsiw=;
	b=hNpFIfk7u6AnXzJD4nR0qvlkEJyEx+x24Ac6fcndX4tgGPB0Gzu/ZadI37NlrgCA
	NNQb2DMEedWC4AyjeO6bpM33+czq828GkLvMCFXMPRNS/7q6SLUdhgNt8fOSSqVA0j7
	eDZp+OlF/OwJhYeD6sLLpRx2E+KcS9jG4B1MD7ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657562212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5SLhkXmVCsEt0KVxTTIla5elz554NhrOHSIE4P6Tsiw=;
	b=SzSqgctyTWY2hXNkNXvPO5lQ9Vg3yFiMcdb0quVEsT6drPZEbOoAngwOTCTTvaQS
	kkUoyFN0H4WCJjjV8Sn9iA/pJzDnu4Qz0csN2HRjwT9ZlNoQ+fdbOHHWaW8faPisfMz
	nKC9+2k1C7/Fxn+6QfQbQ/Ixwe2aWQB0YcHaikFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee6827d0-e1f2249f-f47f-4021-be2e-7de1c206758f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dd3a3cea180b005008a24ae1db564b302bb9f144be88ecc326a5ca08a9d7206
Date: Mon, 11 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657562212
