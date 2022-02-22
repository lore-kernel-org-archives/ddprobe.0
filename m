Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55101366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645501585;
	h=To:Subject:From:Message-Id:Date;
	bh=NL+FNggJ/jrIRoye8gMaBd1gLn+QJkZxl7Z50l7hklE=;
	b=gYJANMnWcJvpNJb05j0IVOpdJ0afsgZ1D9i2/ZIIyVZSjSbOAfjyPixlaL7yDMDc
	AsyVnhQZgqIK+FIptJhZ6wOg9gWRPcBIo93f35h3YcQGIPUcIT0GZJUK5xbR6YBUNSe
	AC1zaPNRxESQ4nmSqc0WdfPcqjc8Mds7Hjyit+tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645501585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NL+FNggJ/jrIRoye8gMaBd1gLn+QJkZxl7Z50l7hklE=;
	b=fIIxOQ0L26xLp4Cmb4xcB4SGN46w1o/L7BtPPCdk2dYAOZXanO4K/pIYL6dax4GH
	8u8AiANJ9AqDNNyW8vcPSMseiyZvgGhPGhL0hfTY5rsqhkNNDzIj3XJ+fRG17qlqLsV
	0TMygo+zpccCQORITtKpi2YW128krqN9CFpevNTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f89958b-a814d4d5-1025-4394-b81f-eb60013909b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb82a45109d2bbb4fe869784577057850a734d3fa41eb038af52a1136045bf0
Date: Tue, 22 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645501584
