Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3460A33D5
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 20:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651695298;
	h=To:Subject:From:Message-Id:Date;
	bh=X5EI16DYAIPD6ELzFDOY9GDNgEmklgotPnn5j6pzmd0=;
	b=TUbqCgwZCMTRxmz6e1lUmMtncCDObCXUVUQ7HwILwNNNzunlzTTX+v7ULiMCUQau
	etLM+8VK1LzlIUvjKZgkyj54EccnAue9WHRMCB3FONT/2JUkcXU5WaOyGTDW3MUDpgq
	WBD2ZuyVMRSiSefbYhFEv12BILXcum/CZAIFXx7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651695298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5EI16DYAIPD6ELzFDOY9GDNgEmklgotPnn5j6pzmd0=;
	b=MPmd3NRJKmzs2d1yTFF0EtzbKQBIM/rgE9onQJtz715DE4gCdSInJPB167j5ffPC
	Btc1/gObvRs907yvKsDKRSbLq6sWGxcBeU8HYOhBJH/dsscgTHq0RS4OPUYEdeJoZ5j
	+b9bMaGRhG8cddjNfnWMdRmMiNi6OoR6ZFC9CxCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090b626e6-0c49d87c-b8fa-439d-8548-c76dedac718d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7f982adc7b95a1ab30a2af2af69425b65d84c78dc24957544f09523c68b16ed
Date: Wed, 4 May 2022 20:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651695298
