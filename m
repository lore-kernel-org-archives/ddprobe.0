Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518D115AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659258052;
	h=To:Subject:From:Message-Id:Date;
	bh=Z5KCBcOWjeAHSRSsb0Ni6tZlQTus7j/NlewK8NTDixg=;
	b=LN5mVGigdVZN4F/fE1LKv945GwAutGPPApVwajZqIWJPFVF+2PkdnU1Ae3/db81w
	U/vzsC1D8hQrEYqvDBLYOxiNVI/62GOFzztxzrvVjw8pjuvHwFQU1LjINdmk2hT20NC
	HxamoV4LYFdsurHlhR21OYCyu7fkb7WLpdxMn2sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659258052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z5KCBcOWjeAHSRSsb0Ni6tZlQTus7j/NlewK8NTDixg=;
	b=DLqSpDGLdpEngzkE6UDzCAEnaBxUKvcPfAzC/i2X4HAOID0MbdUTvDMQtoEkoVsi
	y4uVJNU7BoEhStK6iehgCN4MAjlgcqjDJ2b/MIhilQCrVlBgoAMuA9fpER1sOktVvlg
	LJC2DTZnMvVxCNsda+xS3HQNmZF1TYafTTzOutLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182537c9fe8-5c04dd2e-2bb9-474d-8e6a-40c7cbeb76a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adcac8af5fa16cd460754c00bc56fb7ab96baa7408aaa0b38b4cda5618366725
Date: Sun, 31 Jul 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659258052
