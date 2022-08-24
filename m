Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56A77E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661355053;
	h=To:Subject:From:Message-Id:Date;
	bh=xBmguc3UTAlvqORtsDqUTrQkCiLI4YZq75nvjr7jOfE=;
	b=A4IyGNJf6ZBYsGiVn5ndsp3qse1yGqkaYT8P48wpAtTc4UxMgilzLHQGsyRQKkvQ
	AXK1n7mwpILVdtOEE9HkVxSmqJCD7TQb3Hv6Z5FngfhlgEmQdQFXg4tz8V7MgdGhkrZ
	9FmK6Rz+HwRWLQTLa13bCBCh18/iqRH3Q1cinoVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661355053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xBmguc3UTAlvqORtsDqUTrQkCiLI4YZq75nvjr7jOfE=;
	b=C8Qo66H6KLdIOQmYibfCn697FuTlXCOv4bepTYPws/8T3zcB6dX4bOksxB3lO3R2
	2CvuWQaWKYkTV+0TdaPyxENo8J1qoWAJoqU+8veO6E5qqocNO2kSOhX9idTS1o1qeRQ
	91v5/ZMeGt6fdKdgStrxAHvd9yf8+NX7LOpKXnFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d07a4e18-adc0c033-e9f0-4c5e-a30b-5b0fbacb8a36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cede994daf5cd7aadfb3d17f976ea1e105f3dfa1b8936db4ad3baccc4638576d
Date: Wed, 24 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661355052
