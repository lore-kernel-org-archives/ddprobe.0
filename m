Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7C44293
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647971785;
	h=To:Subject:From:Message-Id:Date;
	bh=brSZJXznUQVRhtjMU0oRModT2tQla+ZKebnmeKxQCeg=;
	b=R1fNr8b1VQK+YDxx5U++jKWCtv6jE/DLQKHaZs34Nn3CDQkQ4Mf56MEWWyhjkhYL
	NoVGWVMTOJtoce7u91rKygvEjT3l54PNKyp57piLyW48hw4iV1p1KUHpSBgOGf0L+pR
	lEN5UKpmzrgO52LE3qMS6NZTkLsiQPQNiUeNyFDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647971785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=brSZJXznUQVRhtjMU0oRModT2tQla+ZKebnmeKxQCeg=;
	b=g8H2J/QOaJfmmkqVGNvevQbBobzRPw8VvwCmpQJm4rjNdXSJ9gjRFai2TsgvsBZW
	xLT1v3/mIaYtutwJg3SjIko7L59muBM7ymUTnbfOEhudedLMnVPS0399EODBaC82BlE
	/00r/xXBvU4iAIr9lKJYJHdWqveoqNa/0fqJyTzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2c5d82b-3a37da35-ef81-4a0c-b26d-3b5043dbf7d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dafb5b0a3ebd931e8916d2ec3e10631565b46c3f756e736ef29920acbdb84f1a
Date: Tue, 22 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647971784
