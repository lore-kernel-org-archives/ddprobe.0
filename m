Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C3E20E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648545598;
	h=To:Subject:From:Message-Id:Date;
	bh=snpHYvu6iQFbjXeXsca15to/OGlkpsX0TIm07TVqLps=;
	b=KC01JM7hwcA28ZeEqtKhjbVVbok8SEa4J3YhR8Qw4y0ZMi7YScNXj4/ifW6K42tv
	zBs9BV7pSlaweYTvVtFHZhCewz2lvY7cyLSefi44zAO1qL/vX8I8D3SF96U7HhVPwPe
	YF5PnoR0P4/GTVk2snGBE3fwN4AaPv71rqmsiCY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648545598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snpHYvu6iQFbjXeXsca15to/OGlkpsX0TIm07TVqLps=;
	b=hpgZEQqEGzxVeNuGBxPiJiPNYnF/XV64n3zHc8CBgi1aMl2y8OJLK5a+OK1C9/cx
	Kg9Vi+gJ7bJSfQ5/07WUrcpcWaIjObq5FupAsveoAvxAeA8a1jEk1BPmclSXkGGqoSt
	IlrlB/TOGoL25E2HzYB58RWicMd7Gm82FNFuuk10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4f98b32-1ea366a4-d20d-43ca-a75f-3f52416602b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ea32c1ac7b9fe7e4567ad0acabdbac914a6886ccb1cea60f844ca7bf0111e7d
Date: Tue, 29 Mar 2022 09:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648545598
