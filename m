Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6BDA23
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 18:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650393538;
	h=To:Subject:From:Message-Id:Date;
	bh=yom2rNQrYC6aL9Rgttdny633azzDQyakAAzhGRvNXmU=;
	b=A3sXXmpbJOLpEji47rRXlZKSk2VpUlxTvJxWIYnGowYEBFzdrKmt7iYBwM9EVi3B
	djdBGDHlqLx9JGoOw7Xt0Ab0WpmHIwtv0iyXv5Sa0+Q9KvB46gcPlWYzBczl8uhEI5z
	n4eWQKYHYbX3TTGwmBTC1KEzZR2WrNsEhTexySiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650393538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yom2rNQrYC6aL9Rgttdny633azzDQyakAAzhGRvNXmU=;
	b=UCJ54K2njBqlCNkkaUK8pFeooRXmi2BEHreMcxmjrACsW92jSMt1WsD4uNmV9Qpz
	DIgSYXW76BqPzmOpy+DmpQyP5kTZUKU41uZBc4t3kR5UJpRPpcRo9bUwsClsB52jk7N
	A7blMukhq1kQRva9U7wf7ncMwh2jCiSIRUzxwVUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180431edec4-14509573-28a6-4c83-b46c-0e4a61f6dfc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea661b5875486005d53e2b5e098706a465db7099b861d09aa03e061b54ee737
Date: Tue, 19 Apr 2022 18:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650393538
