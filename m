Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145FE81D
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647216685;
	h=To:Subject:From:Message-Id:Date;
	bh=oayxKw6Ow4iLSz/nvFg66LROgixuGBt1Pne7UCuv5aw=;
	b=NtqYRsEH/hxOZ1ZgY6Zwvh4Z3Z7BBwB2ihNI88+ob65L+lfQSv9Z/ccIrEbHrWYb
	4CYyqMjqd0mev6hubeTE4KmUCXBIzcH611HV72fIGS0b3VcBO0OxKsuH9vfr1lWclH8
	Vg9oCu9Dbep9NRcv2O2WORgiKVUPciTqmMz97qoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647216685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oayxKw6Ow4iLSz/nvFg66LROgixuGBt1Pne7UCuv5aw=;
	b=S9hMK7Q9LxsyZOAJwB15Cauyq+Z0dBiBw6ELeC6nE8cgUc/SEFdYu4w6jOhkO7mO
	X5xQ4ml4vJx9bDDkJxyrZkqXcWcjLejRTtEQGEANxbLN6uOq42HjHmg1g56QiHjMrhB
	TnXppaJz4boAay0hdAavxKLLoE7BdaWDxjbgdCT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85c3efa8-ddccd7d5-087a-4c44-849b-c618b046c18c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e33f498285b31efbe0dd8e18a0cb59c3abc71411dfc4a40237c5e37e4cca78b
Date: Mon, 14 Mar 2022 00:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647216684
