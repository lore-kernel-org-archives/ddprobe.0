Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA636369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 00:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651710658;
	h=To:Subject:From:Message-Id:Date;
	bh=/qy3MQHMTbzK6PgIXNLvSK36rJST57ni3AMgjGCuqww=;
	b=fhD+ZVnmTXvpa08KDUOVTv4vsCJUtA1XHoQ/gJFZ75TY1UuntDQFBbQRznuwg2dt
	tmrfDnZ6SNTKGAkGxPPAa1BAAE3VFHypMxxmZiR582YTOCG3Ep+Lune0mYSFXrhconF
	vMwQwH089urDzkIWjNg9nm5c2R1dQSGP68zNlRDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651710658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/qy3MQHMTbzK6PgIXNLvSK36rJST57ni3AMgjGCuqww=;
	b=fisuMhCtIXA9DL4+A4r3fj2JBaoZY9xH3FUPiJu/pjtETAUapIV4qWeG7R/0+RT7
	qXxlJoTYjTnCD1Lu4GxPnNkvMminqTXmHynYmBpIz2D1LA/wawky4HdWn6QJpKbxwYu
	ZY4XKLJhAkbrpmqpDkehnIopqBwulmr2wRGk6Cuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091a086c9-00763c25-df55-4444-b536-c5f16f921171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de502a969cb0e71b564a84ed086141e62cc0ad716fe1bd3269013f0093f17abb
Date: Thu, 5 May 2022 00:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651710658
