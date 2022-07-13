Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E234681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657727212;
	h=To:Subject:From:Message-Id:Date;
	bh=N76rGikdVgk+AHexXDViMW+j8m4b0lRc7/sxPEOuEk0=;
	b=MbeT0q1XpyoIe0dCn9oBY8MW5W0oU5b+CzISICkofUa9HXRl6fpc27WUF43Gdfzg
	NTLUErp/0k2uLBG/W5ofV6E3EOZ94z9t4eLp9/60utNQIdKRdSgbBEp1u2DGesGPvt5
	Ix8oYJlrHqw6/VVIwXsrJIGI2qEXSC+pkz5ltxGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657727212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N76rGikdVgk+AHexXDViMW+j8m4b0lRc7/sxPEOuEk0=;
	b=bLUX5dRFW5YJ6LefJx1Gyylj+Y1UsdXebN1JyLaT+RvUDJJGq5URsW4OKzZ9AgyO
	8jgkPvbv0mFDZ/GHbQCyWvewX9km2wdouii1b/tIMjUVPcTdNsNiZ5QLLTo01LiDTqD
	UxzDVac/L7h36KnlR96Q/IshVvemKUSUXkg8d3aA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f83ddb35-b60cec61-3ec4-4336-a684-46f0bf03fe31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32962d272ecccf984a681bab6e1c41218b778c997449d7071189e62e8ea6464e
Date: Wed, 13 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657727212
