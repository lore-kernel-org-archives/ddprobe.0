Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565707C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659904852;
	h=To:Subject:From:Message-Id:Date;
	bh=GWHLXH9TiEHMjQJzfNnxQFgGBsn3blgrcHFBHEDoVxo=;
	b=IEnp7ZwrEiJodfZVLMQ0ayCnWKFvAx7UIzvLywfmIXYuxcaxlrSEupuePVuHD/uR
	PGWr+rfxbsdC9DF5ZtMp4WOP5/jGQ4mDWcbzybAWMzAXDHy+T4g72RyATT3mq5uCMCv
	138OE8GSdkV7vw9++tS7MnFfUjsAJe+RSxZTsDLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659904852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GWHLXH9TiEHMjQJzfNnxQFgGBsn3blgrcHFBHEDoVxo=;
	b=eyIgKWDSJud9sGngnd8rekH2sZDjx9+kzBVaUOuyWszDoaRD9OP9WqmkFvm3gJat
	fa+fhEUEB+Bda0J4UKEY2L8aEEtlnv7Kk5Wl9zAblwCvQ+4ITT3/lorhWLRpe9AaFxr
	BCW9lOG2qTU7iGiND4P3wWuAuRbOr6SQAEDkKGMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a0a0245-77d46348-2eb9-4dd7-b08b-6f6df5c6a44e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1436a1f58b2c9718dbc1b8dbbe319208417181e7bf0f8c242ac7cb82dca94521
Date: Sun, 7 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659904852
