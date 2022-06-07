Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10747C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654561859;
	h=To:Subject:From:Message-Id:Date;
	bh=/96UxNUxWx7MPDu/7DrTB1KY+yafGi0GKuPg+gO3SIA=;
	b=e25+bUsjqEw7rYrdFXTO0rVGxL6acQc7vr3eJevKZ4yyblSCmDnN4Oml09ZkmtSI
	yu/bc1gJUNr1OdC9j11hBaKWwE4XM336/T9zQcZxvNpDeFyNJ2OybBztRFHGqWOR+Wm
	ePPD087Hh+cLFivA7ajdY/UfHYlmLSS8cfvFO52Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654561859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/96UxNUxWx7MPDu/7DrTB1KY+yafGi0GKuPg+gO3SIA=;
	b=HcVp75dRvdn76mHv350V5W+76N2cjMGgjwnpPbugp8EZZ4Q/kwzI7ld8P3Vy213F
	n+aMpgLhF4AzPdgFldOFafnnDWCk/LUTstB0kxh0NzuLknANrTP+j3QPtQBRn3/g+rd
	gk7lHZxG1X45RVso5Giik3m9OEpSOfu/Ed3mthFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b926694-2ba801b0-270f-4147-b4e9-dd30c774ebb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ed82e98b8139a89bbe7515743f3cd87b695a5cd686c181a73d6a57de4b839fa
Date: Tue, 7 Jun 2022 00:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654561859
