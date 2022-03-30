Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2430E63F
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 13:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648647598;
	h=To:Subject:From:Message-Id:Date;
	bh=5dPl4ctdOrCLZJMNsLN6KMxMF5N0KTqSJzKDqW5Mdtg=;
	b=LzYoSdRh4B+Ik/4TGgcvFq/zpYLtU3K2uaeScDMT8lKagIP45UapinBrTiQkKKr/
	y6BptUDVknm6U2DoFSbMkRteJdH/xE7Tmsfm8FowGfT1rsG3eu9WON3GqljoP45GKQ/
	1MAEgAka8wu7VB7TRxybv0Ic5a86mm7drZ0nRKps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648647598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5dPl4ctdOrCLZJMNsLN6KMxMF5N0KTqSJzKDqW5Mdtg=;
	b=ipHWRl+hm3N6xP+w19eG8dk9NtJiDNdEK/oMSGXwfHsge/4LOC7bIU1twDRHWXbB
	M0W4wlw3EowMYaBzzEdCOOZV3JHactRdGOk50s7i6tASLd01Dk4H5SELY/5yoOb60iX
	cMp/NWW4XihClfe+BPZH1bIcnA5SyBWEIxeVstsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb0df0cb-ff9cdb10-4073-4644-8502-c382dbd5636c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eedffdc42d93df64e8909decf5c8872b9847baf503e5dee5718bef811f463d27
Date: Wed, 30 Mar 2022 13:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648647598
