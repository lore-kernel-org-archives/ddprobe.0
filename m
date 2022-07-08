Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3F7635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657249612;
	h=To:Subject:From:Message-Id:Date;
	bh=KZV9SlU/GJeS1zIJt8Qxp+W769WfjRmBhfjvsPhTF7I=;
	b=RLEqeXWE8IKvEU6Zl6RHCgLamqvh2F9exzqpIa+6z9wrK4JbNiFkeOI0QAZWDSSr
	DtO9MdnzwZwgSXdOWT5id0BP32fRDdjwyTeH2bvSWr2LIlcWSCKzRsXwsb+1Ip/3/Yu
	D2RZ8ycxs8ywQyzL0yvWwVgDwS5R1Vc4OnQyxFOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657249612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KZV9SlU/GJeS1zIJt8Qxp+W769WfjRmBhfjvsPhTF7I=;
	b=Kzl+V+Iu0LAG80ILCXhCgOnyniO5w5MzDaUsrksPb1HUaQ0MTRXd4jES++bQj/bX
	4FxZQgQl88IeJIjtaSWmR1ve2z204lf7d+tR3Vj6gc7L66b/kjeLfULZ8BuxUoXoL0P
	JdwPI9HybcWgKVSTzavD7rsVww4hv+bqEkqc2ZS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbc641dc-68146b71-34f1-4151-a311-f7c3fdf9f5cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 954ca194515b08a0484ff127310f2beafa7f4fcc6dc230221219e12fc4d7f94c
Date: Fri, 8 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657249612
