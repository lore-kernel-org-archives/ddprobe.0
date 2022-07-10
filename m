Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887A67A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657417612;
	h=To:Subject:From:Message-Id:Date;
	bh=1mUozm+7Go/LTpCdMGsY3S1mYqfK5u8mkwDMNQHcOI8=;
	b=YtiIjxO90lxNAJktmRW27l4sgengq3ufVinBj3y09k4oOvXGcg2TtfprZy+XXztW
	wmpca1yop2FZ3aG4FVHdR3GDAIhZpIN6hY5QzoAMuosLd29Pxesfn3yjr/GnHspPKy8
	LC376/mOWVk8GQA2+zgg7hGnIA1ER4RasIzHA94I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657417612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1mUozm+7Go/LTpCdMGsY3S1mYqfK5u8mkwDMNQHcOI8=;
	b=LjXiUwfEFfereSpMMYI97S1P+nKCm36sVeiyFyx+O2iZaiokhkVf+aB+hVHq69gb
	bWZ7SeuUiFA3eJztAgo1u8JnjWnT8YNffpKN/onl/qF5vcuxBJzXtpm4kf7pXpv/UmL
	RqizIQr4Tjl+5vGUve9+yMy+OXlFEzCRY0MWMKwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5c9bc3a-b1138293-87d4-4ce5-8029-0d82f5b7a298-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 493535446b477580e640863d015b3f0754fac9f31194c096f4daaec55f668412
Date: Sun, 10 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657417612
