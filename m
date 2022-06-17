Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF3F2F53
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 13:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655471579;
	h=To:Subject:From:Message-Id:Date;
	bh=VfJ38uaM9Ujc2S7tR3td64zisX9X2pj0bvJMaxYVbXw=;
	b=P8Fn4DFB8yO58LXs6T4IWmKQigd4dZ776A+nqxZJ2l0hlYR4CzLie9OTNRS8RmYO
	5ZxOvD+Ddjoc+Hk4eXTe0Wjm6q645ehKOr+t2a9LaKwUMv6L6d13q1HLI304uimvxxZ
	LJtliEubpJ6IF/mfh+SnDTehGwp9EfQvvtlneJlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655471579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VfJ38uaM9Ujc2S7tR3td64zisX9X2pj0bvJMaxYVbXw=;
	b=Z0t3iEtZ3LRiyZOLeS8pgbeBGFl+LQuGFzaYzt8+zANiQqjJymiKkuzUieAvo/7C
	oNcQWLPHRYS8tnKybtm8u29KELaI4bTvNXOQbhR0McygHCiYbdWVY+NbqdVuXxTP/8k
	Du0uLw5vNUTHnJsihj43pqPgh501i1qGC6QTZeYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171cba05f-6d79f491-d9f6-4f6c-9a83-ffbbf3aaffc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18acde99417445a3ed0fe820a95a9885ace801ff4b841ab091294b435fb15b4a
Date: Fri, 17 Jun 2022 13:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655471579
