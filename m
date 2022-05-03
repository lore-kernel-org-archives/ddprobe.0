Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B213201
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 13:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651586338;
	h=To:Subject:From:Message-Id:Date;
	bh=WrqRCkRYRSc6zZ71zViSS3L+UsQm9oKXHL9I3pAgigw=;
	b=Fs0LqMfNfzVCNZcKPgLtIHViOn2jnkGh8QKQw1kqKP4ziHMWkPEP7gr4s948PuMu
	DNp09jqZO5AJYKfoCobjPCbB0IKaAMUxjcH9IId7cwVy1mcu3s0KKMXrf17/u8kHOiO
	Btuo/SIOKgf8G4HlH5jZP3vAebMYQiQgW1GiNDfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651586338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WrqRCkRYRSc6zZ71zViSS3L+UsQm9oKXHL9I3pAgigw=;
	b=jm4yYInb12atH8NVkNdzMiLuysPyWGzlkF9QnHARM5VHKFh0/HGie2mgJHKV6gv+
	Tm0vIdFcfTcmjH3fZie30orbwTmdMSdLc019krkZjl8u33RLafRopYtuPI8vu4S+oSi
	8ylRfwm1YNMZ7Eer5Drl3oAO0s+dnG0tFAfNMtDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a378def-e57bd0cc-97ec-43cd-ba81-66870ea8014c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d5e9a0669c2bc47db3ab3ec9089ecefc4a1947e7a33c63333481f22dedcc0b0
Date: Tue, 3 May 2022 13:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651586338
