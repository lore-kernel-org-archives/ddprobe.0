Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9AD62A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658022412;
	h=To:Subject:From:Message-Id:Date;
	bh=sd0A5y6UUathXe3sp9xN366I/KUUBnc4ByA+Ed0u6Pw=;
	b=Of3r9ioTBWWb3V8XO53yoQ0lBujU3T2LRxSwVIGxmIUegCLE1bKrFxwgmYl4bWZq
	7kG4Jlkm2kpxM5VMkKfvLwspRtc/sJ6MlzNh7paCpYVW6fwU7pzOtiqfZHf0m2oKs8H
	kL7UnjvG1gIma3jEKgma6Eep1x/N3L/R6B0OYNZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658022412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sd0A5y6UUathXe3sp9xN366I/KUUBnc4ByA+Ed0u6Pw=;
	b=b1/hbgyKtbUt8XJ1UBEtTO6z97K7Hdd5pU+Ov1Uu6OieJjdWU58lBZkHz6TFKpTy
	OOufJNt3jNI3etqSvIzpn8fCBJTGKp8Ptq7W2lKI1hGhqy7B3hQLZ5YmM51omppuvni
	d3R+93iHVWvCyvS8vdtC/0mFa52K+HYj6+M9ikGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209d6405e-d0f912f6-f4ee-4a25-becd-02739df49c83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09e2c7d22df0f9c0a9afa737f1dea6b376ae37dcda40e5b0c0100704faec19a6
Date: Sun, 17 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658022412
