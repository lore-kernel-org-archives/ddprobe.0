Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0858E182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656985612;
	h=To:Subject:From:Message-Id:Date;
	bh=Hd8Gg8Dzl62CzyvMffs46hkUfacHBBjtHNiay+x3tbA=;
	b=T45jWczPSngtmrTOJIS7TMTMqEGPOS6eyaF4qceaJsTJVNdzlpoHPB1mMQbC9o/w
	wEpTJ52HaOczm0RXZ5XolPAiSEpCy+IipKnogvF2ClbRSkun3dw0Q96uRefIx5ysBnx
	qb/0WTEDyaa/ff3IYlxzCQjRxIFHIZnZlP2DEAq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656985612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hd8Gg8Dzl62CzyvMffs46hkUfacHBBjtHNiay+x3tbA=;
	b=VtB/H6MfXfhvo+ynr32uYDCN9/Lk3B9pUdGXLdHqQdCIv8tHZrpVeHbDiQlJNgS8
	2/Qk8ax0+sNr00vzQIvryPwZBmqnvhDPiiWJ5UCrzyetwkxQdPMFf2+7h5wGx5V3r6l
	zevA872y1rtD9/bxnp2vwSNtJUXWgbo+rH9fr+QQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc09efe8-59257686-3094-4a80-9c0e-9d153cef595a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9673a2621db181092f23478e0c92cf2b7a70daa5b8a5b81c6124cc360b982ede
Date: Tue, 5 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656985612
