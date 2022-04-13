Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9923D2
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 06:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649831098;
	h=To:Subject:From:Message-Id:Date;
	bh=jwz++/HA6SKP/HkZyNvQ1cbIaK1zgLKrA2lkVaNHczY=;
	b=lAlFxgpsTixqRhteSZZ9S3c5ZzbcEssgT7M5h33+PN8UDpc53FBezL7bjK+g47GX
	A5JABoLllu4BD4iWF4r41PKvMOfe2icPgsS6sO7fU7lu+BMVtGpo1fwLJMbkAHZiF5D
	4t5x3JD46r3rQ/0TLS/MiKnnl2AfnXsKvvOSmENs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649831098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jwz++/HA6SKP/HkZyNvQ1cbIaK1zgLKrA2lkVaNHczY=;
	b=Otq1pDOd3CD1l6o0zsb66q50gJ0Eo0h8tdAmmh2QtGoTL6g/US0fyHp3w+4NXfVF
	Z4SndcYAuTQmY3TesbZ6SieNgKgcqVcpuHpX/ucdderoF3s7I6d8aHAvh6cG8blNSbT
	BE2rh0JW08+OsKaowwriece6UIF0EJfvoUJUMHLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802198b787-207227e1-9623-433d-adb7-5801549efe83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6b694d278501cc7700eb68dbb5b56a87217c7aa21447d3ed1b832f7054d9153
Date: Wed, 13 Apr 2022 06:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649831098
