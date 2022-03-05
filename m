Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DAB2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646515584;
	h=To:Subject:From:Message-Id:Date;
	bh=nfUxtEyLU+o+giOjcNdaPAXLpgm4cjLhwQ0EDxODJ/M=;
	b=gSFYg0Or3HtryQ0Cp13q/H0vclTniPtibxtInsRVT3Nkr9jPjJDTheoaakcbc3BP
	obK1Tc3T/FIwZrnjyuxgK30qu0p2Gkxx7eFYa7kmdLCs28RKWt98il3imz9LptM9ADV
	8q60pJSf9nj+RM4EFV7yKo1l9M+tkbjo0MBZ8cJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646515584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfUxtEyLU+o+giOjcNdaPAXLpgm4cjLhwQ0EDxODJ/M=;
	b=GRR7HqX/uvlHwcLfs3ChN5ThUpQO6JbfQpgQvRQfebIW00G9zdmDu8WWWsEfv07D
	wEWeWgIZrjmt64TludL59BiBAXwIgQm5Lrme0m8Fi7UaD9+8rBbJyZ8/olKwcHmmwg+
	5ckV4Kpuan3/IfrFjLUq57og0x5j4T5rMfSSBANo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bf9ff16-50911ae9-8770-403a-b2d7-3641f05a6229-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b643aa33ee0c7cad36be2a165cfed39546ad2cf1315086ab86c0dd93170ed181
Date: Sat, 5 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646515584
