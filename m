Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746272570
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659622852;
	h=To:Subject:From:Message-Id:Date;
	bh=PTFqN0qHTKQmryN2cjl8pRo/NZFosGx16Isog0tS/Bk=;
	b=WJmnGBe2InEAu4xJYUhHgfmXppgIuGqjGCqVHLj60yUjiifYwvbIKmHYQIqW+pBj
	bLL2N7M2z7yFHCr854nlweSi8y9lr7GMd/73TXYujZXfVHsVwjdfUa3zW2RA4BTxuQr
	KgWXBKgcpIJwvJSBpeMIPcXVWOOpvcO1PaRKR8s8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659622852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PTFqN0qHTKQmryN2cjl8pRo/NZFosGx16Isog0tS/Bk=;
	b=T9hA3ZLwry1tb01GmLAibnVM2TWAzstTzYZwkxwl48b8zPBJWEyWwo8oxrtJ/Ds3
	CLdhqfOB+UwcrwXMpQH+wIMaOS8HG2Ir6K+447vkpslc6RxggSjohCcauQjaSySt+q0
	kOH22feg3VgxlW2Ey4kBcDS55w8KTNFfaSVx4E9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182693b0820-56a0a7eb-5d47-49c2-a2e4-2233148abc65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 412d805232ad03a0ae09dc88e23788afe7a193aa9b52249c2e1982df271ef915
Date: Thu, 4 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659622852
