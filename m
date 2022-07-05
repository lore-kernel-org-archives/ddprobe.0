Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C7E2F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657021012;
	h=To:Subject:From:Message-Id:Date;
	bh=nwD1g13L0sbbdovHuW+J4ABXwnTtJiInet7KYnQCcB0=;
	b=DF0iLgWqKn3a+BxVkmbySjzX4PgaM1ZhkzUPQSqEEpIU3Cr7GCEql+GkB+AGoFz0
	eDiHWyVLi6YOnAeAZ4zz1hj2v9Um6YFA2ub/rt7/CkROeOSWeUOUyXRPZGIvhAktth5
	ue5vcyY9Pu5Gz9dRAFR2Uj+bzHFroo4Nqv35I7xM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657021012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nwD1g13L0sbbdovHuW+J4ABXwnTtJiInet7KYnQCcB0=;
	b=Pxym1M3lI4Ht66+Nqgk5AexZwqB5jhrcZjOnSwvIF9+uFrKt/CqCY51PObIwIDcK
	uPf0XKDECyBe/4+RB1utYWsp1P/Bf9XOnOieXl5H1jkM0MHH6XsPpBKUQ7PB36kG5ar
	5VErR5lHM44UJj7BdZFPv/rQQxTsEMDeLIuU4HtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce261952-f1a29ad1-e97c-4d9b-82f4-05c23362f984-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf933d39bc1b0b5a734a206845d033bc4519f39bf6a8822675ab7b3604f83a87
Date: Tue, 5 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657021012
