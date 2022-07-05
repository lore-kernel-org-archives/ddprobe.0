Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162E82F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657022812;
	h=To:Subject:From:Message-Id:Date;
	bh=WpzJC69QsY5wiXY92K69mh7CbgRbe3E4lMCDGPKagcI=;
	b=io/uMTRp20m28fGmei9ZzHZuW4myS3cMO1R8KL2RXzSeI8SDuuHNsknFscmUcFMj
	PrQyEsUWBckNYLhp9gyPclKeu2k7HoFyCyw3sbVum0WfBWw2BcvoLT2u6ykpdJp1qEk
	ID8h3vzEQ0wrl2uN9Sre11SZRVraL2Nuxnju9kN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657022812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WpzJC69QsY5wiXY92K69mh7CbgRbe3E4lMCDGPKagcI=;
	b=iQHr55HWtdnJuvao8SpE48ir7ueNEs2+ckQAexNI2f2oOwizVJd7yYwCx4dq7MbX
	m29Mdq5B/I/mo8dJPoTct3lnw+6wa0+8qub0TLkyKKmaBn84DCp+snq5n7BNJoYSa0W
	SGRRlH4V+18jc4J2ZTv9YU7SkeX8d4HMSjs9+0pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce419074-ad945347-f678-4dd2-909c-d8bcb89d9855-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a70b165afa3674f61eb7e5ca11dd98e68c5cb924da89b9d896e79f030178d29
Date: Tue, 5 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657022812
