Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6447E7E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 04:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651033378;
	h=To:Subject:From:Message-Id:Date;
	bh=gfQbzrMEvuLvrmz2mQ8QYQ7s6v6+qdlNF7mO9rsQZFg=;
	b=lxLHS/xa3NRPVaX7lumdtqxSqNghyp20fH8cQnLRrHxyBvjjJky10j+Rjr+a93ey
	Qo78h/ZJf0qKioxeoQBkzDX29m9i6gffpFzhzN6lSOeJ9GC7w+WyhUToOhyWQkafGaT
	n5acwMkvbtQh/hTKM8JTY+hFSNtod7093Tf40d3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651033378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gfQbzrMEvuLvrmz2mQ8QYQ7s6v6+qdlNF7mO9rsQZFg=;
	b=Usa+hByCJ6bUSm3NKCD2bVpDQcPEqr9hSgctGhhXM9sPw6iUMqGBnC8krmtAxE8Y
	T54RJUA4VABbduakha+l3pL+HLCABb9XxZJmN7DG81yI01quySK5d6sZ0hxbmkDXsJf
	Suuas55P3YgDMupYHVmnLwZC33flRN0suCI2jYyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069420def-5bf75937-e606-4426-80ee-49430610328e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2961e7f8776e9cdce00b8d41e1e80d6a2064477e638b3df460647bf6d1fcdbb6
Date: Wed, 27 Apr 2022 04:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651033378
