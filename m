Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020A723A6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 23:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649805058;
	h=To:Subject:From:Message-Id:Date;
	bh=iyu/8/CrNmMwUjrHEGJzA4ZlwvMJI3fjk09uwAVo9VA=;
	b=N6jiZDj5md31IUYqyuJgdptWltjQMCs4lwzPKkjl1mJQq6hJbu2f30UD+zsDElmP
	8QwsS9woHeHuCKVjRnVm7mrm48wzaIbRXcTxR7OIxmvsFjGu8PJF8BFLJeeTlnLMiF/
	sKo1JGX3D2uQWcAb/dqCUkbztvOblTKchyZQc91I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649805058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iyu/8/CrNmMwUjrHEGJzA4ZlwvMJI3fjk09uwAVo9VA=;
	b=EzP/k1gOSauCn6sYa+si2DqF+eNbTiaaZYnkga1XPR1NLW8C8HgQUxniRxuaxGTM
	ps4F5uAXzt2/63k0PK/cMOhjSqs7igSaKgkD5AKoWo/BW7/aOqkrRK02kHKZsXMjlf+
	DGpJZuNmbuK3jyhm6m2Wawxp3u0Jk4Pj2hXORu4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180200b60d9-2a4b8ee0-5cd9-4f8c-9838-1616c1804627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 279d1853de85ea956501cc8e130b7fcf2ab00d197cbb3789056aca5fdd7ea6ff
Date: Tue, 12 Apr 2022 23:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649805058
