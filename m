Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81DC7EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661161853;
	h=To:Subject:From:Message-Id:Date;
	bh=UpFv6mVp6vrL3ERKR/YLMiY28ApSdSV288TtlHoLcyc=;
	b=TxgYIpEzlqb0N7orZsiNRfFFd3UVBmTUYh0pqAUsmCYEaiF+hgogooX4z6dKZrfW
	/O3lau12CsBSeiuyh3bZDpL+aE+t67VDlzgnlvFm4o30udU9lgzMAqt7F7r7N58tpGA
	ow4gRulB0ZUu+duMCnkz4hBdiSIdZ50Lj6YCYjP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661161853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UpFv6mVp6vrL3ERKR/YLMiY28ApSdSV288TtlHoLcyc=;
	b=IuzXSK3PPLEZYY44XDGobVsL6jLpUnRGiR2rrElHrPp+am3uIB4wRn84fSosp0Pu
	vJCNXksOH+X4kZKzjatYSgG8WPrCY8QtUNWbdhYbwuDqv6+/hzAHTZfMqtHbVVBcf0B
	Sl+MbNB7sW8OjYcbejyj5bUQid+bdxYrtoKRWW/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4f64e9e-d94da90e-d36b-43d6-a646-ad9b4201d58c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc70a831d733466e1727775578896a78490de170d680545874c186a16c464d98
Date: Mon, 22 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661161852
