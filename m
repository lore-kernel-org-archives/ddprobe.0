Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF217B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656587212;
	h=To:Subject:From:Message-Id:Date;
	bh=FV1MHmbgtsdaE/kDP3A3a+uyfjcGqTd+xYOBi4xAH24=;
	b=USpuRZKDymDazTAN8bTVIyVkM/PBdDCWkR79FmP2aNKvaWTzBuIzf0iMe49v2k4S
	uvMrQiD7P0hbwZYul8AiAZKhjRQcda+cdBTdeROxtO70+v+96u6SYAga3x2CJed8pEt
	CuP2J8fcPV2k15xrJvRHRETiJgRWO+Q90rvbkShQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656587212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FV1MHmbgtsdaE/kDP3A3a+uyfjcGqTd+xYOBi4xAH24=;
	b=b1uEx1Rt0oHvwpdbUo+iUYzMw0IzNfAzeTOEctXvl8WaYXnfdH9fROKys8pwVAxN
	zTRnr2ssvBS01liuSa4/+D85zIiaHmXgWFWnORTQvs+/3c+EdHOxqEeEsYqk76jI5qr
	xuhndU9cXPLYlRw/L1LjMP7ebEK0vZvnxJ6PSh4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b44ad5f7-42ad1555-e2e6-47b4-b598-4cd231e53e47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c48718f296ff7e0b9611cd1b1b035cbfd917432bac7cfc3bd47b8555384f91b7
Date: Thu, 30 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656587212
