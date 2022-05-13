Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CDA17E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652430659;
	h=To:Subject:From:Message-Id:Date;
	bh=NbMcS9u/30q9FybFnMJhbi4QcLN/UBmSfKLtof2hD5U=;
	b=jQIlpPGxpbsqU79CKLwhU0R8joXsSrnU9rtae4gF0sCEWMWoF4fMvBD8TUJhR8bu
	5ZtiH8DQssu4zTGUZxc0YWvwOeIbK9NwcfGPDz41UOpGaYLsiyVMyCk/SKzAvJAuI9G
	CwMUVsujbI4ifxucLQJlx4g1WY6mQitHJ8j3RIgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652430659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NbMcS9u/30q9FybFnMJhbi4QcLN/UBmSfKLtof2hD5U=;
	b=Wn4WVObSQZwY6u0AMfDJ8hOUdUq8f8dnCkJqdJU05BXlNX+0c/hQVYEXywJTEAUM
	2fsh3q9w1jIezSiUDI/A5uCCIRKsnxtKjpNxor47BFItSu8OQp0svBsX3gfaEfgDJ6g
	E1+2pnMK6NeDlmjuREB5i+Rok8Vd/MnmrFvbFGiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc8adef1-88d6f4b9-3076-4e3e-9ec5-90275913f10c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f838bb711a88b3467777816899b205749509e2bfe9c5b115358d19d5ef512b80
Date: Fri, 13 May 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652430659
