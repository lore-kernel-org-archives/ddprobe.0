Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4542577
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 17:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652549759;
	h=To:Subject:From:Message-Id:Date;
	bh=cRDd14iU58gMlRwXg/LrxkFqxRM1GWsGgeKtmzbJ+Fo=;
	b=jn5nHfR8L90bmLVLZmOnBXjqwv80h4iJZhtxNI8adLXcXw3t0VN9IDWwSR45Kk2t
	MHNtyQ8tJYbNYhF76m2boresMH/7q3qaobs7LXy76apljsjPc5JqQD18PCOPOru8uJK
	dhqMUd/gosv3qQQzmKMFGHjuNrvP+1bbT+HU57W0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652549759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRDd14iU58gMlRwXg/LrxkFqxRM1GWsGgeKtmzbJ+Fo=;
	b=EFAt3PL9hTAYcYrV35Unb56k6472yr3yK69InV+arEr3RoQgh6Ney/ipCBQc6rmi
	RRC9C9JOkKbxRbW2I/tH+OCgkaxsOcO5hr8utuUtT8V5+OjY9HiBOUTFTLxhAGaAtrG
	0vVYwm3pTXQYtuFv7P94I6dHJJYS40Hd6n1oev0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c3a4310d-33f1c4ad-eff9-4f36-87e8-bdf56b0ac653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77b070b0dccf77ff19a7fbdc1c542d3150a1757870e24f751e9600d1fefa352a
Date: Sat, 14 May 2022 17:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652549759
