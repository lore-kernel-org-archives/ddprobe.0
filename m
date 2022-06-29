Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE437B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656523612;
	h=To:Subject:From:Message-Id:Date;
	bh=rWaOpNyzHer+Aywc7Wcyg1KgfR+n5Stl9cJLS9GO0pA=;
	b=VKpBjKdZ7iNiDc19svThPGTi4B1aIN9kgw43h4R8k0MdQPsxpnCHgpNhjLJoXeQQ
	Sr/NsrbETTdgcxweHvbRqoSpSqGoB0dGXrpNAib8llDTsK7w2C/n62f65DqUWZ+duJO
	npn7sGkqmmstsUYn2GwFVrGKGoXR5hgVD9uTIqOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656523612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rWaOpNyzHer+Aywc7Wcyg1KgfR+n5Stl9cJLS9GO0pA=;
	b=gbuQQmGzEVy+mCimuHZD3N+md8SjAr4toeiUg4lj7wdlwTUMJK7M3KrwauslQhF+
	Q5dbmdHJLH/uxe2j/5U7me0N7clILJWG2fpQ7AC34Eg0mdI9uYMNjhBSbO/23S6lxae
	/HqqwF1KclJl7xDni+pTnF6Jt53/rqWaq4w91BNA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b08060de-7e4e8811-4f7a-46d7-89f6-0d321568bcca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24d0833f20939e3588755fe96378b151454b45bdb27d3678958db0c63159986c
Date: Wed, 29 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656523612
