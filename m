Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CE2F2B
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 22:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651704538;
	h=To:Subject:From:Message-Id:Date;
	bh=l3SbTrPVq9QvlZNUF+5rmRdcH+g4ZOK9hlPp0WAsJ+E=;
	b=QoqKyiIjNtgQp9g1y/g4je6xFHChYVWVIGpb+kCnMYC62HiSMtZ1NFw/DBUgc6Iq
	+OE7N91oYFeUuwJQs4fOKHoxJuK3/cVXQD3yHso6jqB5QnGrHHYZQhBZ+T5PZb0eHv6
	FzdsCBLlYCLE8859GHPD7Fw/Rji/F0P2jTNZa7pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651704538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l3SbTrPVq9QvlZNUF+5rmRdcH+g4ZOK9hlPp0WAsJ+E=;
	b=gfT05lxIoCyyQkkKab5h/jYuPEKjeKHtQEVmoy3J41V1d/D1/FuvjLrtXofLZidq
	79Ab0cn8YuwJ7e4sKMz+4Lviw/KR5TlZKTC5Z09jd7UNjEFdg114NwFOhHsK439UYhH
	dhV1X6kxpYN8Ua1p/mtDJaK/MGWIcGrxrYkVTW+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180914324ba-26700ade-da51-43c0-b1a0-42c5ec821f3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 170bf943336335fc69117585d3a9f27459657cec34270a6ab75ce62cdbcf8950
Date: Wed, 4 May 2022 22:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651704538
