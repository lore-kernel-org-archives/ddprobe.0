Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAB17C9
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 01:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653181379;
	h=To:Subject:From:Message-Id:Date;
	bh=yO1MgurfoXsYd+Jp39DCAaIk/uoGez457Sh5ggMskbo=;
	b=lgSR4LtpVg9Tcwz650BbNywMVVKxsjvb3/RMO4E/8Ojh22DPdlmkn8LVU5WMdgI/
	E4mScW9auVnGu7lrrskyKRc9Cfgp7RewX1xc54WCAo3aAwqEtiiZg0pH5a3fHxjo/aS
	JTHwafQVA7EdJNe6b8HSVwCjGQn4XGEUaRxlFAtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653181379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yO1MgurfoXsYd+Jp39DCAaIk/uoGez457Sh5ggMskbo=;
	b=RT6HgZ7cV/2u/Y7ld438QfVFXt8dxPvxKFDeeoNT6Y+/JIzv4JaWYzr90kWqRO2S
	LeceVjQFIIov/tegVhtbc3MrkzhMXx5pMky1gmh/mDtlDgkjCa3s/Ko2c1aXnIDyv1l
	i0Mr1GPq31uS6ITlknX+TRpwr4i7x8s/iXK7LDLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e949f2d6-a6d84f8a-e783-42eb-be77-1c12a7d5b071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ded2381a68b1f85e7ea47f41541282aee1ff40fee5e134550348ec7f907106ba
Date: Sun, 22 May 2022 01:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653181379
