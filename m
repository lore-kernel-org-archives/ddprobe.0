Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF602F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 16:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651510438;
	h=To:Subject:From:Message-Id:Date;
	bh=gfW3L/V6cuy3h/VchAd8zqt4vGyQxDSS3PWVDzejZfM=;
	b=MhdgsbKV16kggkGfpgHDATvl3ODnhTWK/xDhsag/nNOwqISGRWGiKhBZGNczyB6o
	tN/JtSwDAHZAOj48afxg9dCxClUzHgFoNhSoC/FgHALVvqkssVY3TH2/b5xPx6lRuys
	ixTQnfGvpMbXocqrzjLargSbJzMOPBWBde2bVQuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651510438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gfW3L/V6cuy3h/VchAd8zqt4vGyQxDSS3PWVDzejZfM=;
	b=NjhabI/8f5Iy1koRLYhQwtMUo1IJ53oWqOuTOn123Lke3gJ7KA0QLKDUpeXr98OQ
	3cTdzaQpDmaDd13vF/zRJtMWvUcLeL17sRYJIv0i7l39yFjyAL9Eyvg6qKV7k6O79r9
	u/n5J+jO3RnRUy8UPEGB5/xStRuXeRXhAf5pdVco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085b169a7-c8ca73a6-b642-46a9-a60a-fe1bd6c71edb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fed476d03f35396d54880f371a7d908bd08b0fe86461bc3e60f57e924cb1d9fe
Date: Mon, 2 May 2022 16:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651510438
