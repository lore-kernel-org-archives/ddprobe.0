Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01120ED5
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 09:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648805578;
	h=To:Subject:From:Message-Id:Date;
	bh=jOSRFnvZE0fk2qvSpXh/yQFtfWZITAlh3Eddrem/AaU=;
	b=USJ9DNbuEGmCF0ABvtPXwztip4yG/01ngKHHO3+gLSjXbcTwYf9p6zYxdRXJGjs7
	Sl1k+7InPIfBvX3MMQu+uVI+sfO8T60LDyOyhNNPrHM8umhcDmndbHQPGAf24PjnYTQ
	fF7bawNXZvB7MnbH0t49tAJkGUEGQ4xUEsItthqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648805578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jOSRFnvZE0fk2qvSpXh/yQFtfWZITAlh3Eddrem/AaU=;
	b=LqjsA2CcK3Mk5jvoyIMg01I5Rmq2aQFceYsnxaph2noOMxM9CbPLeXZv5etYZE/0
	le7orqOM5Ry8HgWs1JypC9SuToBMqvq8G1Y4nqVov7MB8dPxay1jqy6bFt7laEWbadI
	gqSQ/nhdKxVAyEeKEYr/GDtv0EijuPT94Pt55YXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4788641-188150f0-9f0f-4056-9c59-630b0bdb7024-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edaf455887ce7be96acbd45dfceb9946da4482d42bd6705f743410c4d399ce6c
Date: Fri, 1 Apr 2022 09:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648805578
