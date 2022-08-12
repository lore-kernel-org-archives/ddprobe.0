Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A82F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660342852;
	h=To:Subject:From:Message-Id:Date;
	bh=3/4jgwFyhMcr2Is1U8TPIfSTRaf/LYOUpwJqqV+THHc=;
	b=jfnsbp7WXUSJd2cKGMqk/zHehMjwafSEkBQsuD3sl7KpfjZYxrjctD2APdVNeucg
	J092v/ZpVEVeL8AEIAElELnT76BedD8JZ6VBhCgBAfHvdVToULPb4Lo+5Ec6mA7j3BT
	2DwRJ6lb10F3Pt0WdvmEkQAVxHSF/p0q3wAbTR4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660342852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3/4jgwFyhMcr2Is1U8TPIfSTRaf/LYOUpwJqqV+THHc=;
	b=ioB33qARmMnwvSa4qe5ubJLLDwArTXR4/2T1sn5FcJJFq6uqQ++8j0E034Gos6VE
	7Ip5z00vvD3oi5ft/X1ITGtKDrbihjCtCEjwnFSVZBI7enEs+NdxHguV9bSCRguXMcM
	e/CetySRqRuWPmKiL2j6cVxHD3kf6FTVyivdzEqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294255bba-e513d237-99f1-4f19-83ba-d8132249afa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d51635eb3955e8c6384b99117115bf6d337c18ae0f5c9709b108df9e984261dc
Date: Fri, 12 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660342852
