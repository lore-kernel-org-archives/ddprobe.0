Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3461336F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658029612;
	h=To:Subject:From:Message-Id:Date;
	bh=4TMjzI8Yc0gWNvLCoEd3zbFrlyxAMju+3xceUqE4p/s=;
	b=fk2x1p4fukrBsczaR1ARwIypAf0sS42QtK8z7mJBDPGJij5tSnKmAaVFZFxMfiII
	H40b9MKfIMyA7e6BzFl0WocZelpkFyEqukmLrlwvNcSVUk/DF1lSHbgOhj2r8vs3wOm
	Z2HEILy5/ncBjW3+gr4LjkQkJPRls6wXeucrh+8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658029612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4TMjzI8Yc0gWNvLCoEd3zbFrlyxAMju+3xceUqE4p/s=;
	b=cNEdFugHmvPmSBQEDjwI8BFGk8VqrGYlMCiSw/j64aT7a9tb5CaEvosdZjMC3TQs
	Jblye21YzXyIP9gbuV4DKalpg8f5jepQaTt7wP35PKIfgiPc/pP0AaW/RZxnCeYstJ4
	PxEGC2oNbHwz9H0lzjgPIJNulVZvLeHZ6++aiWgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a441d83-429b9e55-a05e-4096-b7ec-95ee335e0245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4faf8b280ebce2db971f4bdc5a9ecff77a43ea1f2afc8836c3edfc6bc6c456e5
Date: Sun, 17 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658029612
