Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055287A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656307012;
	h=To:Subject:From:Message-Id:Date;
	bh=qQ/znO85CvzmAEeBDYBY8ug5qkTQ0Oqy9CSAWYxCYSk=;
	b=hVVRurxIOa6oY2LSwSeKUD1FTsNStZrTBR3znX38e6FRSF+d2uRvimhXdKx6rK4r
	64RLvjKpdJI/PxtxJpHPoeNh4F1UPFeDzJqjn1jn+SRtXtT90l6MbyP21xxbE3FGjvm
	OnL6/uJGufs/DOIpIyOCT9Z1ZPPDHa+eHbKlSXRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656307012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQ/znO85CvzmAEeBDYBY8ug5qkTQ0Oqy9CSAWYxCYSk=;
	b=fN2S0SfTU5E82HSHLTOD/USNb8oncjql6YBsCwuy3G6l1wRDkb13p6K+OLqFAoL8
	LZ7IY/cH/DF1uiBtDrrK8p50/1VPfWqWkxFC1NBPUVRJUVN1YtuA+jOgw60hAXR2qBb
	CQgzDXSaZtBbfARQtsZQiDLu95dBo3bWJN1aQKpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a397528f-ff77051b-f2a0-45c9-9036-7c5e6a00a660-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27a08791d28c1ee4f14b31c63097f1d9f490e9592edc602be90e3bc5270275eb
Date: Mon, 27 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656307012
