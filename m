Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC59D7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646836585;
	h=To:Subject:From:Message-Id:Date;
	bh=EQT6/cBvF+D+gnPBUI0cQzE1bxa6/l5UUlovDivfs0s=;
	b=lzdIuk0S8h4lLdeCe2KiQvXIJB++J9FDcJEDHwMIkQj5p1zwAb/qOzIxWdsF2iAn
	KpafIH2dmbRXNCS2/CaWlKNoGQzv8Rc5KBNfhdNkaFTUS0C6Zcum2aYFtCfHafDssMN
	lRQOL/niFvNhLAYgzjJAL5/bBTMbkIlKAepOAfcc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646836585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EQT6/cBvF+D+gnPBUI0cQzE1bxa6/l5UUlovDivfs0s=;
	b=OumS8cpq7ElHelQal1WlJ129X/o5uN/RGh+g1veXNzWdcM8o1iqQ0b4E7pmYaBHj
	QgwhjqrLFuLcdcpx33Bty5UOKaqCY5GCfHQs8/pFWjsKuPc57leCTkJu1/EmqZTGcFq
	krfYq0tN9xpMSuEzOlv6SuTfSdmpkpNZwKa51iP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f1c1179-28f5e090-3ef3-4e52-b6cd-df4d55f31b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b59b3b2ad5cda7b37432a8e7813618918dc217a75c55aefd87d8cafe44f29eb
Date: Wed, 9 Mar 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646836584
