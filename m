Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1846EA49
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652628659;
	h=To:Subject:From:Message-Id:Date;
	bh=k5eesSe24APkDVaUilxyk8sem3MuIAi8vgm6IrcyJsw=;
	b=KfHKLUN+Nd2YvlSq2xRkF4C/nxicPSIXFtc5HDZ1dOGdl0TTJKU1i9lI1bd/RK1+
	o0seK+TLhO60Uh6fXXEtIVYqVrTMyc2Qn65X36WnnjCfX/KqG9IP6uQT3V3qLfzvTmM
	6Rdea6B9DViS6wrF1LsWUcZIDnTQcFnVuhPJwbV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652628659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k5eesSe24APkDVaUilxyk8sem3MuIAi8vgm6IrcyJsw=;
	b=FtMfoSjtPDv08oc+VkLDn2UZYsUrl+DPqiGdlYc8dJAfd20Zky7lfCpSGcKlXHbj
	TCuQbUzZ6W/ddesOaLo7lsGq4EXHn56xcU5KlX1Rssey/xHVume5lh69CSthKkmeIZr
	4RP4dsFnJ7zh+rewE/UmRmHB77en7FargANSd06I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8581c8d-b82c1395-78a6-46e6-9666-29099a47a4e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82b7d1d898259e9bdcaf30c7beac9033bc1683a9bf064ad1e3a75ec7177c919a
Date: Sun, 15 May 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652628659
