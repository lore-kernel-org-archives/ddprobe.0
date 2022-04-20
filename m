Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1FC1867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650478558;
	h=To:Subject:From:Message-Id:Date;
	bh=tygnVJtm5oCQPx7wfct3lliLj4A1kPODhtWIpMatC5Q=;
	b=Fpfjeyw0x2UYF+w7efo5f2rRSW+PB/cIwBPlZpkQ0SpRDtQiZGHkdgLKpWUcX6pj
	eVPsEEG4qwC7cVXLzSWCyy7hAotedkDJ44dh18/mhcrL2Sh4xycGgTuXBAn06lfyoy2
	PyHg+7NORnkCfhHe9+coS31VCoF4OO04ldAu7vKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650478558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tygnVJtm5oCQPx7wfct3lliLj4A1kPODhtWIpMatC5Q=;
	b=OpmxsA/DvTWNJwDGAsuCCsIKkUX3zLJThXAkw50LhR9Up8L1gTtUux1xepPPF5x8
	f+4vYlu08nmMZV7yLkk1s/4BdD+s3LDNd2RJBMTvdJjND+IszjQz4uAkiRcKDG7G8kN
	dHZtwqGmcuLWvGUMUuVPCLUkIdzYoWRcn8x8HsAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048302c54-c75cfc94-d1be-4858-82c0-bf599ed7fa6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdf40b693d84520958156a7e2fb7d0b4f91431b690f9306679649a84da609e5c
Date: Wed, 20 Apr 2022 18:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650478558
