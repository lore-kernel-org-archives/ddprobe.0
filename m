Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EB67A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 19:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655320679;
	h=To:Subject:From:Message-Id:Date;
	bh=7wSuwHn60n4zk95eSqV/8NEexiBjBVMad5LurKuiXDg=;
	b=NoSwrkw0SetEBMzDD9uSLxms1tVKGMBH1/K+MZGjYS6QmANIVgRyO0Y2wOMiTalO
	z+/GtPw8/Tlzukah6YkDgWcHO84Pv8cpbKvbQ1VwGTf6P5m62v3WMPlBDch/vIK4xX5
	C57J1eYrGy07GiJd7+8hElOBEVRO54SnfT8KiX1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655320679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7wSuwHn60n4zk95eSqV/8NEexiBjBVMad5LurKuiXDg=;
	b=UVnPLrd9TVzqtQXzPrC1nZIab8QSdUynvLdxzzqhpXBg7WjY3NhaaMUVlBEKZIdc
	SvGojwteRRPmiT5VCXp9uFKiILP0QXwxYaACGRlB2cSkrx6MsIt6v4jOPYfwdmjlpxI
	TRnhxqZqeGdpsYTzBnqKSe4OnYvdMXBKMlsvQwdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168cd1322-74a629fb-910a-435d-89f4-77f94eab285c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f5aaff80dfbe4d23e8538ff1b235cea9a536c2d8baeb5dd9cb4aa8f4cfc1d85
Date: Wed, 15 Jun 2022 19:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655320679
