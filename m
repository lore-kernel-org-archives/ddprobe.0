Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6013F7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659449452;
	h=To:Subject:From:Message-Id:Date;
	bh=JKVhVQeBcXUzvuyIzYzbXNaG4SdJ2xw6CIQeCtnVTR4=;
	b=JrC5iXPFIgyhEp/OIcZfdLBGLfEpwIWbfa8aH2vdHce6O4+vVJxh/GeMIwBlHyv7
	cy4eTNh0pSZsFwMy3tyvI3+RTr0rV+d1ZBbAvVQeRNFOTE0+RyaNcZajI6Ctn+f5aye
	Nvkt9sRAeUrvSfCT6RHnGkLm3G1J+0qyx8PZ46kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659449452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JKVhVQeBcXUzvuyIzYzbXNaG4SdJ2xw6CIQeCtnVTR4=;
	b=MHLpxQzrogTbvsxop1OtAPRZvJhB7XcNyeXKjVVB69jIRxKb1WRJ6YLT5kKtmNN2
	0V2j+XwozVrUsbeRnOnNsNdRkgeUu+ltWBiU1tO+by4to71O0lHqDnKnNKvfeNy4tiw
	RUgnUS0UQ7m/JD8Nkn66LgXYkcX5IfcXInT4P7mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ee5283e-57991339-bcac-4bd0-b125-c487cbede5b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7a58588bdeaa7055f44683895547ad8b782a85b2b82455ce5b7da0febcd1240
Date: Tue, 2 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659449452
