Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002E015A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 05:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653024059;
	h=To:Subject:From:Message-Id:Date;
	bh=KFqX8LnRZETEkDhFmdTlYfgi1sLcF6IYtbBytIEpNj4=;
	b=bps2jeewgiHRvX0XybdVoylZ/epW4rxuaMWCn3ai6CnTSu0XJhme0cnKdLkRiBVN
	pYRZWNUwQA83MtsNPq51JihObKUEcyZ/oEeJx6Nq31hGe/lQB0ZZGK+yOzZkWTFD5Cq
	PlryKfODSCYWNbewiPtLXF8/vcfMDPRZLF1/ydsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653024059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KFqX8LnRZETEkDhFmdTlYfgi1sLcF6IYtbBytIEpNj4=;
	b=hSTUHGM8d2Z4kmQ+BMHgjLrpdfPl6WHnWBoIuWXDJw5uN/+/v99IUv6ElnqQSJv8
	JPPgIM6y34f9gE4vFJ7YyCR+SQLJ+w0QwcxX0tT0Ya7YfXYV9feLsu+zRgcHGtUCiqw
	6Zj55SFH6BEAZeZF2Xj9w/0kLU+WNV7unTH8hdFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfe96f9e-84ec09bf-390d-4383-b98f-c0a52170b95e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f873938555dd9a8e315b6d2617a0f3d27b7b08597f5d31de5bda39b42fbb733b
Date: Fri, 20 May 2022 05:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653024059
