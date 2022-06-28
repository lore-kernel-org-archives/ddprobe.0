Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F74624
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656427612;
	h=To:Subject:From:Message-Id:Date;
	bh=F6BMmn7EEX5MxKoWoZjQDOW6SiM7PKZnps+z94C90so=;
	b=LdnKtskWzrtnC5+4gXtrpbaKWBkMSXA4qWuiAKvHsk95Jys3UM6dZ3XS16bv/whJ
	fviqHzrwcdm8qkB5izSlXw1qQG3oQ5KC7BTJ0+HujLNIw97kdfm29tEoZf5969jN4H3
	u3pjKreC0idTIPzkVLtICviEgkV+oPFOF3eO8yow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656427612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6BMmn7EEX5MxKoWoZjQDOW6SiM7PKZnps+z94C90so=;
	b=eKIk1xbLyPKLrVxKrbtGGJ1S4rEh3jH2ipNrzf2DTvLjT7jXoMd58dHW8UKF+sM0
	Z85GgyVEF9N74XI19pebuviFjOnQlG0Kqw0aOAqViT9PXjQvvookHNT4zvxwng2UHmM
	av74FB4qkWb/EJnfi6H3zq/OVFM8lofjEZ4dNOI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aac78881-2623bb26-1857-43ce-bfa9-5bdb78d1748a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e97af3efc57f55aabc740c42627a41aaa2f5adadc0d2f5f2edb68170a37955b9
Date: Tue, 28 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656427612
