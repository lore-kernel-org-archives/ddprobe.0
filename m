Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D82F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660746652;
	h=To:Subject:From:Message-Id:Date;
	bh=46boCpuRKFXFQLt6DglYvpyr0uIJF3TVOfsrxOsetJo=;
	b=BihqdUgKsS/NJNyyJHbCrg6DHSw0BIRUR2exg3lWvY1mjr4e/jrasWAXndcVROit
	Ah7ySennG0bvEIJrosrvY5UBlYWTN2CGduJ3BdHk25I04jWgPbT4Y73QgTnln64uieD
	wWtjmQ/cgAxlkyJsiEklYre8p/bctNKsynRvngUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660746652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=46boCpuRKFXFQLt6DglYvpyr0uIJF3TVOfsrxOsetJo=;
	b=Bzb+rz+vdmury0k3Kh1BahpH4kYBWzdaDmV0bs6yHlzSnDj3V4+x6ONpf7+oCPjV
	o2gx0V3jrmO/th5SYFu1HXXWW+NbZUFG5yiz8RBJXK1PMAzPoRt5BdiI1p0jF4GvixQ
	ZVoqPq0DPkKUkJkZOIjbV2Ej/+QYjHwclh7cAx3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac36dba9-e92e2df3-93ce-4e69-ab0d-7122a905b18f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f94a8d3bb3c519f88474a7c3415827b447e70fe9ebb1070ea5bcc4ff5cc163b
Date: Wed, 17 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660746652
