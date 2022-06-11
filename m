Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D441A21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 16:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654963559;
	h=To:Subject:From:Message-Id:Date;
	bh=NBjt40Y7gj+aZBaCs5d4nX5btvnZq0qhNK64HHgIYSU=;
	b=eeHLTkKxFg+ghpLaxVQgfpHi49Q4PuX1+UynWdEg15UgxlJ62EXCEEIEWpdHfpHJ
	Ta5NPQFWcmXJjkBC8WiDk6i0i33kFj10uy90ziLPX+91YiMo+epE9p7IRKJaglbpVjm
	wGlEXuLCOGyTGfuE2slmmg/mkoYZ/TlEpzPoo8ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654963559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NBjt40Y7gj+aZBaCs5d4nX5btvnZq0qhNK64HHgIYSU=;
	b=hRTecxVjJ9mcDYTYtc+LmXIzLsg/FaHmFuNutUTLB4PN5DEiaQzYu/23XczLvZMT
	7Bxl72uuH5hadGHz5I4QIK50N6i3vL9Y/Lp/uaWEH+l63aQMnQaV/JxMxesJaUnfkfL
	EZaQOO9LXj9Tmyw0qRZ+jIPWNHaI/hiC3UsK1wfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815383dbbb-c0dba2d8-8c9c-445e-b6d5-cc198f1a4be2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b5ffbdd05f22ec95699f54979d22c1d2a4c035debdf7f7ba22b8d425738579c
Date: Sat, 11 Jun 2022 16:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654963559
