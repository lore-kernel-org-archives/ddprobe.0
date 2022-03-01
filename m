Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDABA17CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646169685;
	h=To:Subject:From:Message-Id:Date;
	bh=rlqfsPaIHusgyF3LVD/G4GTkzOfY5/zw+P7+WO5Zibg=;
	b=WDvqzVODKXYpckhMrOj+S9WchZXJq4uA8rwXxBk4r1nrwFx2bVbQEm5tenPiqTLq
	Kt6gCWNcj9JjjLWin3Omq9R8TkjB5eew/C2Yr6aY0KI+6lopk3HHRJHj4ABSElWKPvA
	0FFTLmfbUdBHglp4XMnF2hbucCgTY9iqeDtEUIEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646169685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlqfsPaIHusgyF3LVD/G4GTkzOfY5/zw+P7+WO5Zibg=;
	b=mABb7nkqUqYLR7Ba67t7+T0BGo0J3froU14UEj7HOhoi3fywaeGOP98GBkEuPci7
	fBqtsD0rps8Rmh9CbM11jmAbrd2NvmxhxbJkWBY1StVPAdV/yEgkvqnb1W8/NW54Ur5
	vQxL3t6TaYH3MaULob4L9aZuWOM6CXkjjbSMrQl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f475bfb88-858bec10-8fc3-4de1-8c0b-349550bc7a76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 776836a72535cc4462a3fbc05ed4aa42931e881091d64e277b03fc2f98aafd3e
Date: Tue, 1 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646169684
