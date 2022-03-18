Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E680A15AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647565285;
	h=To:Subject:From:Message-Id:Date;
	bh=hZ65Rg9jZqxrlz2R6e1hnyJM4sALCCvRI6yn3YBpAZ8=;
	b=c5/PfGdr/E3QldOozL9v2Y+iGi1jNBXf98d2ga0cRiWcuaEVShY00/7u6+30R//u
	oUstnED/59CxBEsgy7Mm3kbIRP3ni/YxqRmZoYoshNnbc7jr/F8UXpGRc/btmMCAdR8
	76yPWhMRQXr+Fhth0O4Oq6vkt3ym412OB2V9BOLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647565285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZ65Rg9jZqxrlz2R6e1hnyJM4sALCCvRI6yn3YBpAZ8=;
	b=VUZ7CZdDnP3WQyzjgiePRs7kdu+DwoM+r5etdf9SQpDIZug+575M0iv8sOd4Yi4X
	pITpgeCLU/vxzNWSno24hvqHwX+MxuuJaBCJ5W9/7axKugWm38fnwFvQrOgmF0pwAUO
	GaHlkKq/s0//Ixki2zRd0WtjAQVNup7MDgQyytaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a8b25a1-4a0c3566-d648-4bc5-b2dd-c427d45417b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 800e9353c3e051bd635c645e5b2e24afa3652cd5142fa2866b24e57e01a66b10
Date: Fri, 18 Mar 2022 01:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647565284
