Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C793FE3
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661119852;
	h=To:Subject:From:Message-Id:Date;
	bh=xlJTkiQPkuKVbhoB1TdUl6Vh0At3fPyfwhx6MRGgYXA=;
	b=DrWRJN1LeyNWsAOnzJYBsPXXAzUgz4Y5bOSiGDC0QBukR8mWIjdptlErG9bSICBO
	nnjYN8U6Mj3UsQd5o+pT+rCFTd3mTilBvXVQeNVFadPIA3WeFE5BRf6bMaBiwrAIMnN
	vODXHOr0NcCL9Ie+CtUN2tv8sHk/ZnShH4r5aJwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661119852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xlJTkiQPkuKVbhoB1TdUl6Vh0At3fPyfwhx6MRGgYXA=;
	b=R3TM4ZAJzqAqtOgFqFnLRYjRRDHlgFAXPQBKSfj/MZUKVt/8YzcswPNX77ZOB5E2
	yZDAdXVqCu8dx/0X/qr8uIb1zqzhmZbGjcvb2tPtTFYk13VTv325OZCLHAUVWVVyQsf
	z+WjcIB0//tofXoeKghQb9N0xTfqrmNIbX9/UePE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2756ff1-c68d57ea-fbb2-485f-be61-1a0530624e9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e71b8dce3dc1a5fad9fc53de35d8d0675c44505441a6e74c571517165b76e9
Date: Sun, 21 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661119852
