Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5157A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 15:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649949298;
	h=To:Subject:From:Message-Id:Date;
	bh=uce7th3JbjDmg/jmrEEA3zWMacHoa0wbgGDQswEMBwE=;
	b=Y4PGaet3BFZ3YcIBT2ZwFS+qCmLMxN+moQt/vsQ8NIkGghk++hrp+gjJlogjbS9q
	A2ueV8WkQnwfSnZWF+V8y2fMrU2l6lDghm2stJDfWYJridIEKEsYpbllucEV+A0Z+KT
	qeFkBMjVFXVYCZYAKtcDTscojy6g+igYH7QKHNz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649949298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uce7th3JbjDmg/jmrEEA3zWMacHoa0wbgGDQswEMBwE=;
	b=Lnptrd1eES7b0yuyoXEtxhc5CH//1Ex24hmpl+RRF/zLD2Zp/ex1zUsgmkP+5A+a
	bmO3mc0+xPLcYhwWGRDa1Ej9AyNtach8y40Stv3w+S1Us35AKYNyo0Ntjwam5K0Xfx8
	4UNC/jXn391vimx3PDPXlEEydG4nlpSgGE3u5pOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028a44e53-64a9d446-f7f9-4652-abed-970c3c1eccb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27ff84b3a8bd38af5620abf0ef651ca22e76aec70571027225df3219298e5fd4
Date: Thu, 14 Apr 2022 15:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649949298
