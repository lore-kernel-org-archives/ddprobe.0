Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDE67A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657380412;
	h=To:Subject:From:Message-Id:Date;
	bh=R7huwLi0gRw6X3cdBcbbJusS1JIqTXBjo5wHKZ9mPHk=;
	b=M+S/OGgfXNlxbBEto/4zLGS2ywXCFHHNu6rzcyVvFfGtWaUhnU5HyjqADVZDbPP+
	ZFUHYEuA8Vp441fpNAqbfMWis/41/exG80BV3ii4R1jLWLGI6UC2oue03tXur7dWrkC
	OEg37nMQKsbZC+0/Ihvan4QEMk/9LgZNbx2LFOpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657380412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7huwLi0gRw6X3cdBcbbJusS1JIqTXBjo5wHKZ9mPHk=;
	b=F3VUrMjX9zbu2eivcUFplWW6ZWP3tJrrpdTn9WLLFEf0RlyFVIAj1WH4eqlXSJiX
	7OFk9/BcXBJ+837L0ekbTMmfy14JFksbg+LG+uA5V3c9g3AofpNew0ySvt4wIHCjsJX
	F1TfNMRo+IYBScBU0zA6ZJbcYIxtSGrZkdjRm058=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3921b8a-aac2f8e8-c71b-44a9-90ee-dfed90813689-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0e0dc4c3f94698a5a6fcf9993be384e1db41af40b2ba02c15f2b2385605d601
Date: Sat, 9 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657380412
