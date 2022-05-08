Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5D31879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 22:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652047738;
	h=To:Subject:From:Message-Id:Date;
	bh=eSF3jIDxnXvxivtFk9gu7oe/3fn9ap7mtbcVw0d07Lg=;
	b=Cgvs9Ckfg0/Xde/sIkZpmInJzo/zk7qiLMJ+/tZumBIVWGB7EEbHtFu1Q3As8raW
	nug9BhsbhKNdNeihMfQdXuBGYarcMQdFRoOW3C0Jq/XUrGjdqjkwVV6DhmYthri6WQy
	+5Urrs/neyNP1vYrwBWcPXiWLTQSRjIn3GOoiqBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652047738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eSF3jIDxnXvxivtFk9gu7oe/3fn9ap7mtbcVw0d07Lg=;
	b=Z4FJ61uEr8MGZ1g1p8GBB/w1RwhQX1Zo/uAUFo2b86AjpwlP6qN6uhWsgoTgLfau
	zIrPhh55mA+gtya9hwoGUt0nYg4NluGMfRWUeP6PqV3eZvSi7rRuAP0uhS2nPXUUPWw
	Bbnx8mcnYpQcQ6vujwqX/vdhMihjQFWsWSE9qtIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5b7f5e3-f57bcb19-c137-44a7-b4c9-0e48e83daaff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 643c3d2bc7558be77772cf27f800b8459547b3f8d57a6f998e7d5b65072e6755
Date: Sun, 8 May 2022 22:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652047738
