Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBCA7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657773412;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ska9y1L3EtLaTJqGx2FKfPLNRsYLtMpgBh1KNV3jsE=;
	b=DuPHcaRMBOIwQcYaHCblV46D9Go5wTyUZFVDetcmFp+f0cGusrUoQC5gQhHVL8QX
	5Q23IR55EIgByQWaapR1T2Z+dstahmRzbTIaTzPPeQNGqPHsau+hLCuKANfCpPGiAfY
	cdZ7c7Xu82EHLwmWYd3seishAY7Y9s4y4RallA4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657773412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ska9y1L3EtLaTJqGx2FKfPLNRsYLtMpgBh1KNV3jsE=;
	b=NM8ZN6AUnwFurQan790qKXVtrj6L84u8CVgSK/vSyPrSE+hyleWrcLvMt1hpjG7H
	WeT25wATpf8y1f/F/Bu3Y+TZuavV1mUCXKTSJbDo9YtJg6U1oGehpYtE+3h4HW4WvvB
	ptV6Js/AhkkyRK3uhRaVFOZlcAY2MBln5bxun7XA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fafecfb7-66ca67de-380a-42ca-bfbf-21f3d11be1eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1db9fb4d22b6a364f10e3fad274a8e438a578ab4c66206de2f2bcf21069676c1
Date: Thu, 14 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657773412
