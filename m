Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7996018D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647652284;
	h=To:Subject:From:Message-Id:Date;
	bh=1/1lsPJ60xGs/sqzrxjS0RXjfS3SP91+qF/ywi/Kbew=;
	b=Eas0u0WMlbiNFj/srel/dkhPSp40ay5ehDBOX43HuIOL9oL8gcs37t0LqhggyP6F
	VFEAxQFTbM2u13B6IsqZsyBcSIoN3QSHycX60DPLuwEb0+eqegyv8N+cebgZcTbkHSr
	I+KY8kVTZYQtVlFaNeYvHVxWgJAd0zD0EBmSlPlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647652284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1/1lsPJ60xGs/sqzrxjS0RXjfS3SP91+qF/ywi/Kbew=;
	b=jVlVd4HF9YeBOHRwEmDIXckSNt3ApqSq3iWXIdlR9mIo/kSa5pTsRCfhxw3PxDQC
	RnmBjkIZyfT53qRjGVq7k2Emx8BrAxMr5nFVoHtsDcdRKUCSpjTOSe9SeF7RG45AEQu
	tx2vyZxf0KNqqe7cBO2LIfY65+xY5ST7YCzyD5ls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fbaa985-82c43571-6e91-47fb-9a56-6244e1cede66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c69c7009c99adc7e516f3455b266529f32dfe4af1c95d9a8f0110d03815660a
Date: Sat, 19 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647652284
