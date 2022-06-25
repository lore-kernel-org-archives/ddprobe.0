Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107E923D6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656156412;
	h=To:Subject:From:Message-Id:Date;
	bh=PuCwI0dnqAuxAy19UuHMTuUQRdtvkltOIWmyj7XqI7Y=;
	b=NkM6HBi/Aa6OU4PvU96Phz+eJgdOPgM0i01kGtZSAuA5QFhk4YmOZvkCgiHD6np1
	MfPKvivyskMvY26KN7nLgzwkJYejV6ecNvPWP0XtBVdSt8a6GqgLPJnXSMsOkbjBWFz
	eM+Gy0XvUfLIct+FtzJcKm5sNOleAO+jBYmOKXf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656156412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PuCwI0dnqAuxAy19UuHMTuUQRdtvkltOIWmyj7XqI7Y=;
	b=WB6ZQc9DLZZgIbI8QSvxKzAliVh+exnPM2fKOaHgq6RQDuOeWl5PdUUwzA/0Z2nZ
	5qUOvrP/zsd82NO7g8E4IOZH4DNNfNpeHPnIRg7vmougBT5R70V0TtA5Ua2KLmMlrEz
	2CjM53YPw3RmxaXgrQLakUZV2hGiJRoCRsytaZVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a9d59cb-982ec1a1-f14d-4845-ae11-f36ed8e649e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ec0e401b59a95af8dd5aa577f9e7401c718b1887800e4772b5744146398e145
Date: Sat, 25 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656156412
