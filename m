Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F17A52
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647973884;
	h=To:Subject:From:Message-Id:Date;
	bh=ykYk8DeRyXxieVrV5qfqcRBSqwiL8EOIMONTqKaXbBA=;
	b=YR8uNQ085cuJzCbw2rlpJfRrpl///Lje0aFo+dOCIw7ZO3TM5Y3xjHPb5nezzQCK
	kID2rAiYCqCB8SjfZl4KU/Lhkr/NeVHbSvTvKbpliF/7m3EcplkMfIaZN8jI87zQJrN
	z44sGGeBW6yN1NmqqoOfyKBWkbtYqoFz4EdCmoOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647973884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykYk8DeRyXxieVrV5qfqcRBSqwiL8EOIMONTqKaXbBA=;
	b=g0kR0xYEqPbfDIv2h4lmG6qJJAAs8zNjVhFTrSZbigsSlqo12pfl8+mRQfaU4eD4
	TrBM3ONzel8ppFtch3Sdcko2dUIGL+oP8a+Y3dMCLGu9AI3qjS4fm0UhOL81pTTherf
	u7Aakl4LBQhoTZwkLWOAhrtFYfIYMZpw3qz7uIio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2e5e36c-52ce4dfa-b0e3-4d39-9584-f08d5719be4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71fb790764048da399c11c0e43560a35f691ab750ce4e875795f947d84267e13
Date: Tue, 22 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647973884
