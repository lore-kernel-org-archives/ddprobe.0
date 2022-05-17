Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E9F136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 11:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652787899;
	h=To:Subject:From:Message-Id:Date;
	bh=Tt3x3itPDbZ5mIVaASsHmB9SdaE+/GhOfbE/AmakFdk=;
	b=dOunj9qzRsbaJ5j3FyX03tSZQ6CBKhGNJI00m7Dol1d8nTAWb7p0ORUAN7whI8Az
	JQBpEyvsi3kEWunyIyzfLmxtmfa8YqnWbWEpHXCfK1BPSqsNsySQQC1A32bi1hmksh0
	oVMJ883pro5K2p4ru5FI6jiWSiMoX4ee/AYsUMEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652787899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tt3x3itPDbZ5mIVaASsHmB9SdaE+/GhOfbE/AmakFdk=;
	b=ftcV/S9oK71avk10s9uVfar/wKHTlnPen1c7uOCc6AdegjNZeUhWOFt0U3Ob3H5N
	T5B/qp3xIRWs9p6K91iFf5cf5yTNWhSS4yOsJ1mlZ/ms+BvW63FLi/hmr9Do5pQT3Qs
	JrKZjlITRaWJHM5Hh3tlbx2CZcS3ATiZq4PnrnZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1d5eb5f-d54de737-3cfc-4d9a-b13b-3fcfcac02440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 248441e22092d07c96e42c0b7e90218590b41ba96f7cc9a74227e939dc90858a
Date: Tue, 17 May 2022 11:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652787899
