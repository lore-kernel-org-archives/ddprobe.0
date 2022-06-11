Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C79B7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 08:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654935659;
	h=To:Subject:From:Message-Id:Date;
	bh=yObZ+l4nj9DcfFuxJ2Z+yeBEUbtnCJKGrXl/TK29KOI=;
	b=BrpZ6MaZBVOFaeKYiK/rWlQqXvBk5QpHho/x6xdVHBkRx06Rv+4uNgRW4NHT5eAf
	vmFOcBMVsyBMzz7TV4BkA4KQPZoza7K0fWeP6gsOSupYskLMIfFXtr8IjXsuj4yO1dn
	zl56JURnQAh6lyPuBbFrEdfA3n/7Z1J7hDEqC184=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654935659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yObZ+l4nj9DcfFuxJ2Z+yeBEUbtnCJKGrXl/TK29KOI=;
	b=AKVTIdw8jMPw+qX4q+uPZOPLur0/5Jv4LegSZnW8iUHEE3bD/0YwcLi4iPlwdYid
	5Gv6Lpzq2Czs+AgwBbnHZhuYHhSPXGV8+TUQ2CrvX8lfz3+INzBPY8N+e7LHuwhE3Fc
	rojV91s0+xbEhnp0a48syXxbKZ5LPxVuWkUTlPPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151da2315-4d1eb47a-709b-4a77-938b-f95f4c78c151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1a54488053059b8ec2e012c9681922298144072d224f0a145426437f7e37ae4
Date: Sat, 11 Jun 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654935659
