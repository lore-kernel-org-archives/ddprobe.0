Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B7F28E6
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647411984;
	h=To:Subject:From:Message-Id:Date;
	bh=NpY/Y/EM7AXI680JpTrqX8axvPUqVueATrAOg5PPOLQ=;
	b=ALXXVr0zG5kpsBEz1hTnue59sBtcbPl1QaL6t/Uxulzi2CdOu+FMbe+Zd7Tk7gOf
	/OMWJhcS7S7c+KXnz3+WygKb5GDr195BiQkcEZRY+q9TVDpTZFrJNlFA1XsZJkWQtW8
	r20A/DnpGAPoUw0Ar0IfOg1I4D8MEQTggtngtzco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647411984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpY/Y/EM7AXI680JpTrqX8axvPUqVueATrAOg5PPOLQ=;
	b=BqheLgFM3T4achtY9he1F2SDO6wBRLyzijsmpc0mzs0SuwHUeHg3Uwv84S1q96FK
	MK1m9GnF9AqINJgOPX85KrEHWP6q037y6fI7orZhZgX9Wpti7Xq4iq2fgAn4smShXNh
	cz8mhjW1HyIkI/Arp6/CZNH581r7EOmztz3hSnhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9167f996-c75c0c4c-6f7f-4e0d-acec-1834f5ac527d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2adfe5be90ab7ce3b76eb6a6cbde6162e5e96a28615aaca93e10a373914b97ea
Date: Wed, 16 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647411984
