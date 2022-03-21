Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832FC63E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647885384;
	h=To:Subject:From:Message-Id:Date;
	bh=8EnTULrf/pgclRLw1PwE3alGgFs4p3/glc+Kdho6feQ=;
	b=YuFH3lddHCmI/SzndXE3b/CyVrHVfPUpR9Kr/BEvfol/t47rfqXR9jI7DuIphup/
	FdjHG6nYsdCmIMnzq7tZ1xMzYr+jHwqOlBMBt4Q+z5MlsNzOnFDFYoFpef6iITzpcpS
	k2u4yuZAT0JO+6J6AZsZNFKelwBLoobKk4ohd7TA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647885384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8EnTULrf/pgclRLw1PwE3alGgFs4p3/glc+Kdho6feQ=;
	b=GckljjBgyKBuvwibJJMLYPDR00my76UhrPbe6E/E6i8IO49ctIqNHCK83Dez62pC
	HwVNgxbvV8kiTSzdkVBzeXMiV0AVYe0+OV0hVs+pPcT8h5cqKgQ48QbiXsUnmcd6qOj
	eNbtTVxrttCt1UwENEGS27drl8O9AnM3o9N9pYi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad9f7c2e-7cc21f3b-450b-41a4-9558-9a5d6850830f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5bd95dbf5e698ca90c3c1a5ba654f7a7081d3fda2c114d996a97a7ca0c97e24
Date: Mon, 21 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647885384
