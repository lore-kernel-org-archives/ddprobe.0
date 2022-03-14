Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C201366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647236785;
	h=To:Subject:From:Message-Id:Date;
	bh=YBYckkQ1uLZWOoOszTA/zESz2z/kEYPb2x1ASN10KcY=;
	b=QcgAPB1E8vfhfuywh3CA9ejooq6YrJw7GrfEwOz4whR6XKDpHY2Hu0NqvMGMG3BV
	i8MbtdWo04AVcOsiUsyhmJhZi+Afux/fpyAFznS+ahKcIWT4OtIJkjX6SaCjxfPc6hN
	c6Zud6kKe1AJ/dgvjIDQoWekN0EqIfq5+qHWUgAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647236785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YBYckkQ1uLZWOoOszTA/zESz2z/kEYPb2x1ASN10KcY=;
	b=QCVLZQPe/0bdtGWiArFMHrtpxLY15LW6MWIgywQIvgeE+HTJ/0LE0vCPiFW8ehJP
	qoisgPUGrtV5/8bT16996IsGlP2pRz88fV01iFphb+jAVU3MOS9+WQaxtY2ciDue0Iz
	Rnf91VCemRyL7iUGvqKIivpk+mtQv8rZmj0W+FDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86f6a35a-e1983c5c-d110-449c-b0c9-3ce049899c05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 367d1c79fbb5146985709836d7a26b4f2584534341efc171ec3f212d4a64490e
Date: Mon, 14 Mar 2022 05:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647236784
