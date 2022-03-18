Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D491B7A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647582389;
	h=To:Subject:From:Message-Id:Date;
	bh=nXfSJ2Ve4aDrvhZdvzJnbCwzHs19RPg9rAQ8/7Uk2KE=;
	b=F1zsnJFu5tiik4p8+8+ff8Da6Tc2MkmCJoWp5GpDe5kuurRFpaeUj6n3I0tJMimw
	j9g6b+3vSOpRe4Mn5DW8CXjU0e56+jeIkgZNA1dfGiuGRrHN3rfbhPi4HCKdWMEvRxY
	uPh0ijxQIQHr08t5fiGsvUMSfi5Q73fO12cMfRfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647582389;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXfSJ2Ve4aDrvhZdvzJnbCwzHs19RPg9rAQ8/7Uk2KE=;
	b=KpCefJ48TqdsKRuYElQpJTNZEJ7pJ8Yvm+WiKuCt6IJpbhsnM1Ys2xz9gl7dUyGb
	U3NSVtm5+Eqgd2VaBj2g0Z8kNRIviVightxuu3WCaeadJrM6eV6qk0RTng1ep2rfU1A
	CUOmxffgUZgAFaoROzZwVsDwm/At5HqseJQqmGnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b90129b-f3651e10-82a5-4a79-bdb0-44e53e806687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4def25a8975d547dd38655c5f81c1d5c1671cbda30db74fa4d59a0c949dd37fa
Date: Fri, 18 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647582384
