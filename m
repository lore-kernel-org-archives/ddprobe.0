Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C227F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661215852;
	h=To:Subject:From:Message-Id:Date;
	bh=AbfiSJanU4NKBHZ15tVdXI5JEyfBIRA3vV/unkOQg4o=;
	b=WOMnfktw6gjk+eiX6mIF1SROTEEuY++FRCGzArixvH9mD9BgMrewIsVvpEEFv2VF
	jMFp53MvvWlFOEhwjeTDpHtESObMlx/rNYwoND0PPtoQMlIG3BMtXzfjd7hoD/fmEmg
	2mXjgveNWXxZnamSuwXqAyg1nSMdKq8MXbNZYvrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661215852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AbfiSJanU4NKBHZ15tVdXI5JEyfBIRA3vV/unkOQg4o=;
	b=Z/LNI6BazebESIyStGpww+bf37tdGA7ki9PWFBbynYgQ11/pva3lfMmSAFrztokL
	cDMzVczF2VBK5eWScPCS6CTxXFRMJMyyCnge7pP+h+vSRClO6GKpoWV5p2DKrSIUdws
	9pfea4NNcc0l0Qpp9mCtS3X/RqS+mVFpO5LUvgZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c82e483b-f16e02da-c37e-4da3-90b0-3a55f9a0db7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f373aa4ed622d1d3a614466459ec90b72864688ba8a160ead63f35e707e068e4
Date: Tue, 23 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661215852
