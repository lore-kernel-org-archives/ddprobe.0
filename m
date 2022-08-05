Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0A810E0
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659706852;
	h=To:Subject:From:Message-Id:Date;
	bh=EaqINUUFcedm/uN+npPVwJL6YQNDe8z+QXL9aMZdNnA=;
	b=eL7jszusO04RjYRLiGp5CUujVExOJXXOls6bduPbOsvaUYt950qRdCia51a/pR2q
	Cd/ZcPf6hbAGxVsNU7/2WYb/criSS9eZGIlKnhq95fOwdAVOWJoBSySW/jjQPh1b1nI
	is5DHch3a9Dxc4BCqNPxUa2kOK9g3gYgiSN1dyTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659706852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EaqINUUFcedm/uN+npPVwJL6YQNDe8z+QXL9aMZdNnA=;
	b=Z21FnrkQUx2DIA8/8IFHTqcXuiXNs7a0TLUeKeb+HxfNnGEalEICqbASBBhC5ENE
	T9RXxdtw891L/7loOYCFW4935vs0HQPcXXZzauWysOg688y5gRkarL9/A5YdAzFYQRD
	BbcFeMYbseFeQravrh/+52dQEiIdZgBKBsQDnDLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e3cc523-cfb17cfa-9053-4303-8c8c-cf72641c8184-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6d28dd179625127829892c03ba729022651b226a934320fba5749b8a9d09ec4
Date: Fri, 5 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659706852
