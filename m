Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB9F57EE
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656716213;
	h=To:Subject:From:Message-Id:Date;
	bh=KDxoD+emZayUA04YBpDmgcamkI2j/s1oTskW0yBem7s=;
	b=Mh392NHzhgwWxWEgVjSqGwHmCs6iciwfFEBd1IoRfkFBZW7D95ts/QigGsH5PxA1
	YO54TbvUeUS9+vDXbmadsyK8V9J/NWCKUvxHRWHukyNih4EkrPcKS5AcW5iWfn0tO8x
	EoJHcQM+tE5qnm0lBi4fmx+8Zi3QbuxlBkOE6tbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656716213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KDxoD+emZayUA04YBpDmgcamkI2j/s1oTskW0yBem7s=;
	b=EKAZ1z1FxkWVSWk8rcqtiWlQVvj93mbpSXS2cX75f1T8L/i73xHkbPV5VrghPuC1
	jWLgROow429vTtSkM9qGFWw4mi2yP4HAewiiFVkUDzWUsGMCu19LFDi1963NppDd3JL
	F9Fh5NyBOueo8kuT9M9v5+yOZvUX+NlXSrG4P/Vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbfb3834-3f4406a5-8716-4ce8-9fa2-01e3b43b5a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0af4a8294ed44d6a23c7557a7e3381ade6f30857cddb7c57c60968068988e60
Date: Fri, 1 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656716212
