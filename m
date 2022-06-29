Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134467A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656528412;
	h=To:Subject:From:Message-Id:Date;
	bh=gHm8OVl6yppRynW0LulDcIu0DrACOV0N1O4EDr/mEzQ=;
	b=Gf2RJjIx0m9IabJXUKvEJ0Qg02f7xA94/RmC87LKbzklyV8WEBdbL9K6Lc3J9lmG
	I2NF3TqWAnUrPejaRNWlml8g/UqejF+q/8nonJFymAmPnvEZxUgKHCg0cr/tjDk+YjT
	jvvR3+lHDjxn2IAgYqeCZWDow3HH9LsHEPfjI8VM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656528412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHm8OVl6yppRynW0LulDcIu0DrACOV0N1O4EDr/mEzQ=;
	b=BpA/FdhTLIlfkyimpuq7p+mAEbpA1vmnk+ROUaunSEs/LH3asOvqfUJg2ttM4HaZ
	xG6ikD1JF7mSO4pxBorIeHjPH7edMUckrrt9X/tCf7y/cYbTv8Qbthj8STxS2rDAdHA
	k3DrwsVz2bY7md/TQY4RWo7ZzX97/d2Nw5O6+Kk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0c99ec5-e7e40dba-bc66-47c3-bd3b-1295cf96c8a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c1b0debcd1f2b198ca8ea09a71013235ab9a852f02781e790a7174767e7255b
Date: Wed, 29 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656528412
