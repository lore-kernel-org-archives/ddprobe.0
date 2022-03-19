Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C548161
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647707484;
	h=To:Subject:From:Message-Id:Date;
	bh=vLIbqHzQk/8Ei4mK4wCdOQ+vLHgV0gzM9GVtJnmf8ms=;
	b=QE6rSaIB29eonhE6yx6AyWyNbArbYTBRFxkX6elSpte3PeqTXAoxjUHZ/B33pjVS
	YN0x+lpgReIEZD8Wdewz564vighdufLrg4Ziv+PNq25efZ5pWAe4rQijC7byoVEY1DD
	WMZRFSOz0RAGnLJyD/ynxuRDr2WLI4h1QDQhTA1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647707484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLIbqHzQk/8Ei4mK4wCdOQ+vLHgV0gzM9GVtJnmf8ms=;
	b=Favn2y8p7s+hUgmZPbrlHdnPuM78dRBz8wPnvuogOejM0OpQC3YzcC5v2iu1SO3Y
	RjgJbwmwysaiSjCKVSFnBIdYrOoZ0/tDAFLjedG0OQ9ZNOYhZyuI27qzFJ6vVO+CmRq
	KqbqciDiPEqkuQ4rt6NCWaekdiw1kzlfBLhaPhdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa304f224-eaf0e8a9-c87d-4ab0-aff1-ae75c79c90af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4063f9653c23522adf6ba4f6fce207dc8369bd5ac6e8f4adf511e9560cadc224
Date: Sat, 19 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647707484
