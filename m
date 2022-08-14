Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC81EA2
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660509052;
	h=To:Subject:From:Message-Id:Date;
	bh=4Ozu0lJaET9YdVdoFXFtorgGNNFiBhJhR2dzftLHxAs=;
	b=MOnezU9OUK0bG1KYSWi+LDmwwlgk8TvUd8VwJ+8cOLSi6P2rNgLg+qv0gL3ugoKL
	st2weTBmPC+ESNLsujVmVnubaxwJOPPYSQcLMFAQ+kcPgHqJbtUd2xq5mbq4Ebjsotm
	AQH2Tp4WCHT20Z30CTbmRLWunXfYM5hD4f3H+KPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660509052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Ozu0lJaET9YdVdoFXFtorgGNNFiBhJhR2dzftLHxAs=;
	b=cCF0k1OvQsWnB6wqxaxAxl6kpCCL7rCuxFDt1e/oTcTXjZS62DhlbDgpn/PSKZle
	idkMLy78+VR5u00K6kDYZTrp3wszDq6j+IkHbUB23YESa2ShodnwP8L/0r5bLqoJYBV
	1hlS4nM3SZ8/l18xFdarj2g0OoO1Ouf/OEjhI4EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e0d5e6d-2828b355-9659-4de7-b7ce-b5dee64ec746-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b1274555d5e04a28034354c42f22b4b1260d9429d99e2455fa5590d70815da6
Date: Sun, 14 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660509052
