Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5CC63C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 13:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648648798;
	h=To:Subject:From:Message-Id:Date;
	bh=M7iJfSZCttROzAQzswX8/ONwD4nBa+regDNhIxf0ToU=;
	b=EBeu8xPmCCBc8rWiHAIfrjRXoPGp7s56yXWqGb48ZZFwlox2C94ZuO7mrMQROA/t
	t07+bPvkLxcEQsSWW0Okd5f9FtghiPNySYR7OXfjIq2ELxlnGUnWoR9ltXb0br35e1h
	Ff1ug8e4FR/ncjCO7rNryp9B+YL2id1dKFRF7Qd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648648798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M7iJfSZCttROzAQzswX8/ONwD4nBa+regDNhIxf0ToU=;
	b=Rt+7ZQ7kb0BFmkqMQpvin9Inpbs6pbZIyoLDXPs3wd08fet4zoBU05cpQpVhGDxV
	9In5ZGZQ1S202oJ8heTUi8E9l/H1GYxK0DHXTc0mE6bJTfza+VCR/81OXBu0Sw9e5PD
	TZt+VB3A6puwsNa5ciD+mohaSprDALWdyBOWddg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb204057-52534e3d-f1f5-435a-a71b-e222f1c8b0b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c037f7d196ba75a5b3bb8a91ade292737193aa66b1d369982ee3e820ce5246bd
Date: Wed, 30 Mar 2022 13:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648648798
