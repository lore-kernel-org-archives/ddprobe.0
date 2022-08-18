Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E653F15A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660834253;
	h=To:Subject:From:Message-Id:Date;
	bh=ksJYFCnUmGHj9hwpaZmZjEs0W9rUA7fRm1AjPlA4syA=;
	b=VRmFEHOjBGVWfGRlepIyXBrlFFtanhrVrrHSgnNopkFA4QPsYibM3k3w6LglKswS
	hY8OxuWtf2te2XX88HcI55c/SikLyY0nRMxp3yKKALj0G36AQwz9sGwHLBnwXRxQBq3
	ONB64wPxuRbfUm+3svkN91tWCHnra+wXNwrtDnl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660834253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ksJYFCnUmGHj9hwpaZmZjEs0W9rUA7fRm1AjPlA4syA=;
	b=JenkyvTpS4t0avfyUDtCwJuMYB+RCepMrxcIUMqT3o56og3CyWq40+nRHiLcsgQ1
	VAcZTnZr843ueh0a2wY1NcdXAUUihgo3S0AzcoNBsRirRvF4svaKIUcE2BYRwoemHD3
	Rul2bbG9Hf9PP9A6lT7N31zhJuTjtqWOJmr8Am0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b16f8889-c1be484b-c33f-4c8a-a66a-f93ea5aa88c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eff0662d33f2246d362a4d56417718a314945302c57057ec155ab0988e544fcf
Date: Thu, 18 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660834252
