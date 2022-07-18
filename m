Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DAF3C37
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658177812;
	h=To:Subject:From:Message-Id:Date;
	bh=AjKTEts9C9TFiVuaTPcM0Dd6B5y/0dPTOvGTjKkEBOI=;
	b=JZH0cPKJmHdyqY/lCaqHWq2oxZ3fCB6d1X/AAdQXbjL5LwcXbM+wAk6SdHHSarfF
	hQ6zF0BnBgAA57bhmvgxffXc6uMG0DlA5EB4azmzcY+RGgF1hGqBH50VPfeeMXgsMEM
	T7jFt5Wk50Xv74BHmLH0PoQswxdwY6GaVp+Lpep0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658177812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AjKTEts9C9TFiVuaTPcM0Dd6B5y/0dPTOvGTjKkEBOI=;
	b=AJpn9BwgekJje+RtmN0dfS+MgciyxRDg5/P+PizYebrbjGAbfU+zdylyRoq5SRyE
	iTVv5RoHkCOMelOjQAHFpqpoVDZ8mkUsIT0WV0eOGNMZ2jzMcF3MCrVSfZ5+Ux5h4IR
	Gpd2xgqIf9XgfpxRY5juxFGURIo79ZQ1LFxuNRyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213197786-46e5e107-c414-4e8b-9fd7-492c514c772b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c03112b0ebcc118707817b48790e73aa028319d18a9940c584d6c212872d309c
Date: Mon, 18 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658177812
