Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26111FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658008612;
	h=To:Subject:From:Message-Id:Date;
	bh=hpPmxPLE94EMvXOACISKGBPCcC06v3G0vS4EBZF3yUg=;
	b=iT8P+B/2KlHG4cadLALrMM3RE6MopkJsrlMD2I6CdcxiqU3Cb/DAjxupJWGbYbwK
	MFdu0F4GaEosBfETHqoHXTvSlejm0/Ah6kXlFHpj9MYWIxsW32Rts/xo0XMWdRDoFFG
	g1jz6lUjpTPi9X5xvwEPA9BktwW/zPNbOrAxVeBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658008612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hpPmxPLE94EMvXOACISKGBPCcC06v3G0vS4EBZF3yUg=;
	b=iQHbh68/VZDIOAmhjWJvGfVQzPbJA7bCcGEsUZeSF7obPHIExiaN3B6tZve7SuQH
	84ZduTy1cH2JhPhtqTR1wCwtmobFS/D0/WxMmr0sjqHrBZxepzu1Kob7SP2u37vzK8x
	E6h2t6YO245p0YtYcmc7fGrtSahLQVx6+Dmr7y7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820903adb8-93dcbb68-31f4-40fb-b189-7f36dfaae4a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36186bbbd3fb0ca0231cf7dd854e6212570bfadc4802180e8b74efbdba980929
Date: Sat, 16 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658008612
