Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E337E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 19:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652037838;
	h=To:Subject:From:Message-Id:Date;
	bh=uV3AB1D4/vIqF+gi/i9JXjSTl4aDQmEsTGjHw7ZIpR0=;
	b=enYKD3JJsKtCpY4gDC54ZKQSsKmU5KIyTSI2jhhE9YM5RDxc41dQS7AWcElkp//n
	6Ky7eSXu54Jb6WEHyHIE/5OLw09xHrMH1Ykiv3ht8WBZ5gG7z5eMC/8kPgwrgsBj+hW
	AkkysvECWku9NzOQ+x0fm3hw13dak5/iT94aQuUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652037838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uV3AB1D4/vIqF+gi/i9JXjSTl4aDQmEsTGjHw7ZIpR0=;
	b=AltCJ4gCTm5Gr7koptFWDizxdN6Bu4477msY5zmY7OjZr/86E7SIYyTG4Uv1ovq2
	ufeEngajte6H+TO4kVsE247dq9Ivv7eIobE2q0Ki5wMrnj8YU+7xwRQlqgSLAMxYuKB
	OoSeq2IA0zO65ScvQ/0tsnnxhw5mSpAAeycqZkWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a520e5c6-80186b08-5e5e-4d56-92ba-c938aef4014f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27892af241746447d8b4a2f3a8e56a884f0aee946b01f26ae5c73e5f0b3103b8
Date: Sun, 8 May 2022 19:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652037838
