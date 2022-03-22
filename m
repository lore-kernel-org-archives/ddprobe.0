Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8834166A2
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647990984;
	h=To:Subject:From:Message-Id:Date;
	bh=U5Z4yp00GN2iftJttqgOkwqc/RlcokdMPzARDlEACJY=;
	b=QtaWzp26h+biExs7Ix2I3u/jI01myWnbsRYWRb/hM4MWoA8TxGlGVZ9XR1q2aqOD
	fH8WR8yUMbOHFWF1pN5WiS2rFOB627I1Mcts14UM5UZUoOqzsBffR6gASIRQp8AnD2K
	f1QidYuMngfI6mG1u5nQkf64ACxvguL0AIltm7Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647990984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U5Z4yp00GN2iftJttqgOkwqc/RlcokdMPzARDlEACJY=;
	b=FKxm8/AYq8NlHTVpRkja7s1QpB7eYqaXwcntTWAYraUiJR4+ol/bPa7YajCX/oZc
	pfqDiIbHogEF5bK9Iaou3NGgyuf4XwxO206bNleS/bMo00Dx0DWz/7m6bzDGcwalHq/
	ZSEl659Nb1QniwfcOtkSr0xhWSLtHPydYNeMfzy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3ead03b-b70f83ab-378b-49dc-88b9-b36da066d380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ac337c27d1124e01506f4bc6e7e74d796c693c215ad2bca1a0c78d48d3452e6
Date: Tue, 22 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647990984
