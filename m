Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC363D6E
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 23:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651706398;
	h=To:Subject:From:Message-Id:Date;
	bh=9m7vQlNYxkSh+TWEptA25k0fZB2j1rFQVZr/HRro7AA=;
	b=l+fEbanRbiA32vJ0ETwudLVtQkgLviufTBdmg/qQlPp4grJnbaIK3T7WAJP9+j2K
	V+J75/Btmjrwk+a1KjuDpDUIXKdDEDY3ruuflEuMH6zaIUAqeUPpsy2HqhCBAJZYWPM
	5XPgLKxpOUn6A5uIO/TJrhtcToJj0ogaJQgx8Lxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651706398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9m7vQlNYxkSh+TWEptA25k0fZB2j1rFQVZr/HRro7AA=;
	b=LW2RDGV7dpGEZsNKXS6rsNGMsJ42f81gt4vNWfVIuY8BfHixipRdqgxk+jpTKc5h
	P2sBKjoedRVaSEp1rVo3Y3Ww6ub75ecQnlC5N5UFgWbbc9XyUk152pcn6m2PYn3Q/7I
	PFUt8hgtXl3cWLuf2pdmLuiaYdi9prF/aeIuYxE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180915f861f-65c9c531-f9e8-43c8-b3a3-2c8acb2525f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9438a7536a5881e6e7d2d4f863c43c99cad00507e9d382503e95a5524f806d2a
Date: Wed, 4 May 2022 23:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651706398
