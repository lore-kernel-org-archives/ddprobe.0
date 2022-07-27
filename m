Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A7A2CA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658952052;
	h=To:Subject:From:Message-Id:Date;
	bh=C2/RzyNyMXn3m/IT1nb+a0A1T3/CW3y/1u4VxFmEujU=;
	b=IO1TxGpWCuMlyfSCC+Npvh4szIQAjcrYXPUuwB0JP+RuSj8faeJOvjwh9tjeonKX
	on5buC2T1kE/uo4lRQ7Cm0M0Sb5A113zeoa0MlOjJuwBnPGcjfqaHhi9LhpQ5JhuXBY
	EQigXD4gPNCgB7R25bKx7X1yeYKEcns/onpYOn2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658952052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C2/RzyNyMXn3m/IT1nb+a0A1T3/CW3y/1u4VxFmEujU=;
	b=W/CVlc2fA2zq/u9vqnkX2IJk9O6FdxrihcPNhoIt386IqFeu53SxFh0RZirsUyaK
	nK1m/D7zjXOmVwTdnuR1vJh4d5C6CcYhuX18f5U4hcOJqSLzlVfeRe+OiFcwMfa72II
	5gByqN2bsWz7EO8Av9MCmzrR/RHmqF+tzw5Zdm04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182413f6f75-7a36dac9-1428-4383-99bb-f9e58fe5b153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05fa7bfc9290714a5f3cf8d9be727aafa7a63c05baa7655adbc1407c1d574a74
Date: Wed, 27 Jul 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658952052
