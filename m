Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4877C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656251212;
	h=To:Subject:From:Message-Id:Date;
	bh=ouKStYUVy6paMFRYEkB22mYGUPWn6KSih8ct3pm6g9s=;
	b=ZrufCRk4CK92RXRh0CQvU6Q2vTOAq4wTXIGy5vYhLskT5EHIboBt1LCGGp8mAWxQ
	m76H7/QR8yzT29uFhdBAbi2wjvvipYSm9fOszOmY447h7fvDZpd9h4fFH68GTZtslM+
	3cPBrvLv3RHeIpDfwZfQChvWSS1c4RctLnclB8Pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656251212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ouKStYUVy6paMFRYEkB22mYGUPWn6KSih8ct3pm6g9s=;
	b=kE4T86JPZUPT/9Kv4YUfP0H100ssANo6pU2gVMmg0lYEjZa6u3gdR4MZflQMtsfT
	KWigQCYOIXlU6XScpjJaSaes6JGrL1ZEsobRtlmvLNVma6QuouM6S2P8sieDRUlhBs6
	69Wxke5U6eZrxbpjHTJxAVTKrdKUMtp2H45bflkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a043e1d4-b54b0075-69ad-444e-9f14-17a16ea487c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b281fca09d34b801e54f5ee5142cfb81634366f90cd8312315a1fe20b16ea9d5
Date: Sun, 26 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656251212
