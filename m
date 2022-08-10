Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A08417C3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660110652;
	h=To:Subject:From:Message-Id:Date;
	bh=5ZGucvdaPIKY6gHVTvIMfK/5rznY8ty8MgkOY8zTHMI=;
	b=VWXzYA87Pq4Cxkf0ep8dr4byyMp51KyJ4sBND/ZoQ5g2AkZFqRit0QG0vm2jl88z
	0cfhmrWwMAs1DS1na9xM73aG4VT/+Z3ifASF44ANefVD3nGaq56nnEf1iqPLO86R1y9
	6II+EQKbgnUZRf23cCZWmpiUQmhoaTgJeZ621ybk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660110652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ZGucvdaPIKY6gHVTvIMfK/5rznY8ty8MgkOY8zTHMI=;
	b=dM0X2BVozgzq5ndTQ17vqAMEsj2x7Ska1lfGUB7lpZyGuhn0FQRSn0PKUBRC6f4x
	mmlxOHik3WVZj5WHppRLbNnsYJECW6OX8XKKydZUYZosRkGnrWpg8Ik/jFt/xjOhgSB
	zX+46VM/lfJcCARmdpE6IsT82V15CbQXEZcudhG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182864e44cf-5b4f9566-e23f-4cbb-82c3-c1761d581122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8a5a3808203a80fb16ee976022c48867f190df875b0c09736e00c29a1bbe8d8
Date: Wed, 10 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660110652
