Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05591FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657526813;
	h=To:Subject:From:Message-Id:Date;
	bh=xdD9SHHLSOGLQbNr40FyRWtWRBuNN+tVkU+j4mgKYkU=;
	b=ioeHokTVlhqpAa8nwiOnvo+F8/p2ehLjlEft3l2Vvk780/WCW4YXoKUDYHhCyViB
	HZJpGXAaWrdkq696XYRKzvLj7XMlZ+ORFIpMFBkYl7HVXttPdvlKA79p5pBJjbe/tVA
	6a9WUiKQzjbadJKRLMCNgcnvZ5hsMxuE4PU3AHLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657526813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xdD9SHHLSOGLQbNr40FyRWtWRBuNN+tVkU+j4mgKYkU=;
	b=OM8xXzxqAVQfi/CGdQ/n4pLLihTxfcMkGzgjtXWXv4/3nUaLmLN4YKN0qDWaJZJD
	dSEc0Sh7moJbhsLLs6HPafCTO23JNY8M7UIUSabbWAGRR2I9wwJCIASNJ4qR1gtcljX
	M0Ec3zuGFhtNlN4ZL0wCuFknSNwXST76vDvTCJyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec4bfe7d-de810c30-e165-475c-803a-a9082647c7fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae9b631c0f3d3660141a02b0024df2156144f32274b96b91fc8161f295c3b5b6
Date: Mon, 11 Jul 2022 08:06:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657526812
