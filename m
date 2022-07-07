Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D8362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657153012;
	h=To:Subject:From:Message-Id:Date;
	bh=AyLU0//v2YZOcxHjWxQGUah7u4mD/RIqEvH5E4sk5r0=;
	b=DsfwXiwe3EBEH/Jmw87bDnXsEVZzPo/t/B53xZXVPzgVWDAT3wd2NjZIf/PPlvxP
	+c8Fq3IEMXbzjWD2s611/WKfwW/DAP+JN049JeAab5eRx6YZuHCevFI4yyBV9y0fnTw
	YvSFTCd+vRRt2W1r8SUxn3H5HqSfh+S/vI5Re7Mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657153012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AyLU0//v2YZOcxHjWxQGUah7u4mD/RIqEvH5E4sk5r0=;
	b=OM+DW5V9+NMEoslRNdrkeHcxeTJEmp6ALcphM3e+BD/MJ6TQJ/W+3rKdnb7hvvGt
	Tvlzm6hJVERw202gbf4nuVPPgtJ2OThdBfHmKh5Xpb9p2JsH454cEgLZHqqoAMqOIsW
	/LmUfysLyMSc8U715qPHSqsgMJUmnKKQpafyg2TY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d604427a-9d906748-8161-44ae-9529-66e7365baabb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd65ddc006071f680586d645613951b031ceb4693a258e811e59068624cc858a
Date: Thu, 7 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657153012
