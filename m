Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7465437E
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 17:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648488538;
	h=To:Subject:From:Message-Id:Date;
	bh=RMRAsB4wLsUdHR2fJ6ec3k6mKy9/ZA2kU4TGXdfhl8w=;
	b=e6ElCPWVfriGalJ7KCgjX0s7XexI+VkkHGCOegVprMpyeo5B+x7KSNHKtnqesJ54
	QUUpAU+djgNibBc4EUiZiaC3FokT04d6EpCI1nwkJXv5LEDbZyF49fo76p+ACXASJfS
	ngT6WOcfa8inNyqnXLvxtPkS8b54Dk8O6Y2rWYV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648488538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMRAsB4wLsUdHR2fJ6ec3k6mKy9/ZA2kU4TGXdfhl8w=;
	b=GB8BW7r1yEf6EsFNrJ/zcenexNYRfBv91YjMQKOZDvfcC4B/gs+jo18YMKmECd1w
	MkkjzN5TwtzHAG2IejUPnNbsSe8gwOBvzFTzTy+FskYVL9uV5siufzsuXO+j0PvdTGL
	KzdapYP+tw052l2cUesBOqHcWOKovHOPbcAKe3IM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd192e0a2-6be314da-d84b-4caf-82e9-76930797d9fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0437b504a2f35f6570c911c6cc91643863bf7afa6cc3da4cf83a43ef33f11203
Date: Mon, 28 Mar 2022 17:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648488538
