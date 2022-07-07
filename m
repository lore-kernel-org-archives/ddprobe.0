Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC91E362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657153612;
	h=To:Subject:From:Message-Id:Date;
	bh=vXhduBfxDhPkdjWV0O/C4n9+fwwQqS8RIsAUC3hgLHw=;
	b=FlCpb2U5Vsk+4y4uUmFRX03LwhBSdA01Uv8POUwvL4Ak09+M6VYh3SptVv6JhNoN
	cf6EsuWU1OvmFm70C+hpv8WY+wVfDC3JisRIhxQYMlAirqczi8c+0UgifO+DrBU/4Du
	hWMxXcWa/WaaN4RvYcXle3SnXs9LFptqB0POybl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657153612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vXhduBfxDhPkdjWV0O/C4n9+fwwQqS8RIsAUC3hgLHw=;
	b=f/IYkw3RqBIYvbA+ql+BqnyHmfAVRTLPO8ZPzKK2dA3fleykONdM6HE+0NgPxviF
	daNWIrpAIxmKpaU1L3rpfzlAHKiLXnGPBOAItNVNjOTFvjLU057ZzumiHVLcv86ROZV
	11to65d4hvC4V9GzgU56WiELxwrkTUn7bhkZxZbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d60d69e9-0b32a5e2-5be0-44a9-923b-9bc1d19c9f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 184c012fc307b665e90bcddc5f05547682567af2f6d5a1ec66e488e670c47080
Date: Thu, 7 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657153612
