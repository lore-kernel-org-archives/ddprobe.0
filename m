Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C0F3207
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661289652;
	h=To:Subject:From:Message-Id:Date;
	bh=2hxHzgFQQjd2NupGalHIXmaO6wi1kFOCegyzoS/ENVg=;
	b=BLmj71Tt3pCjyfCejVu6rZUv1DbQStd8h3tW9sGQkmDXgva0ud3cn15OLROK8Te7
	0Uuq0gxL3hA49FHt6EU4PrgMytfvVC3+/z+fK6QJeSM8a0JdLRG/XRZyDaSRCqmrPvM
	hB+fjdw+lWvtquaf6ZVoazQuLtVnyYjgiTUk+43M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661289652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2hxHzgFQQjd2NupGalHIXmaO6wi1kFOCegyzoS/ENVg=;
	b=N3DRDcHv96lgw8g0RyIZzmDWmfz5p2B11PEiHLOcbc7XW41sWAZKPgZPQKt8lI3O
	T/zWZ5w9FU1fcjYkPKCqbrB8uxUp//bFP2+FMfl755s4O+oIVD0VaMSUyikpf2KRE9z
	dp9jOt391qmCLl+NQ9danqJs5MCP6c/fn6PZrkVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc94613e-ca95a556-710c-43b9-88e5-64ab53aacc8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b79a5fe804874754dc0cbce76a17a5f1fa32e6055087ea81882d7c951edef6b
Date: Tue, 23 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661289652
