Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FBE7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 08:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644654006;
	h=To:Subject:From:Message-Id:Date;
	bh=riTzHxiqpuw25IHkPEFfxAsb8i1WFSg22OkxlJY/gIw=;
	b=UWCCHAR7lQ0b/aAp0oB1mo2dZtWUDhujeeg1M2zYmMUIPYxwJb1+tk2u5tfuJaR6
	dNLA9VQAKJ34DXeZzPO/FPG3W8XTwAAEauqhyTszbFdbSl2/NkgFy469m89DzAewXxq
	vpTy+/MEz1/HRL77nOibMhDWOgcJrbI6YH05bQug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644654006;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=riTzHxiqpuw25IHkPEFfxAsb8i1WFSg22OkxlJY/gIw=;
	b=YPMIL8o6fnD/bhz0BDI1uspB2UrZjATmt8t7e9sWa3cTuZvM1178aqmdnydeSAnU
	o/UjgHbr/U4diQI6G59PzNe4g3VYbTGoNCbVVR1ZQSH7XtDacCQ80JrQohIrIi8x00f
	iCXq0OKOS2IgLIVtHRwC4CiyMnTXTPTndXh/YLQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed04900f-5a99fb05-93e6-4ef7-874d-d6360b0d3aea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd2ae5848700f9f0ac3695bb9594fe9a1edbd2db6d943b27cca47c54bc3c9532
Date: Sat, 12 Feb 2022 08:20:06 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644654005
