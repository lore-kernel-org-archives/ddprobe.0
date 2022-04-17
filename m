Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93FA2567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 18:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650219598;
	h=To:Subject:From:Message-Id:Date;
	bh=qRFWgMziIxZyogHs27XJE1kjxFEzoeZyCI/gsq/FLrQ=;
	b=iHT/v5rrRvyj5HOMXCohFa9D+1twFyvjV0SEFQL6uH1CZ/BlecLSGF0LvgQ3UINd
	eBPgS2C0NcPtSTVxMdNyf5s5j3CgpLi8Uy8WBMnThx1URIIwOwb/7/W1t2PoT3hHwnk
	yplrlhO60AxX32yBk2L+/SK+b5HIIASpOPSmudz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650219598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qRFWgMziIxZyogHs27XJE1kjxFEzoeZyCI/gsq/FLrQ=;
	b=XMBcM3WIvoFcFGyk2hywCl2UPZFl50ZDvmujbX7LyWJaLkf37I8RP9KsE9ukH8P0
	/6q2ARm8b32GHtENSH8YTYBcew4OBRkJTwCMxTpm7m6wCPHgww0oHUsm8UZIW2pjzEC
	D2ufiFvNmQg+4qe5c6QZNs1jNSv8XXXPUZCWbHJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038c0c1a8-8d6c9de1-452f-4caf-b3dd-9668588e21f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 344f714d8153f1600c9c5ec8ccfe400f746de0b9361d32865a90f624f78d6765
Date: Sun, 17 Apr 2022 18:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650219598
