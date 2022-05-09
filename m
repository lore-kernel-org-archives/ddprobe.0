Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EF87E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 13:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652102158;
	h=To:Subject:From:Message-Id:Date;
	bh=bvCM1Mnn+x4EZ0Vjl12jfjRlVzvvyEEIz6gcOuChprA=;
	b=NADXcuLCo8SEH5YHG4OigK34K5AJdxS+Uq/FHzW+wX8OT9Oce5aUlql/8SQQbOI7
	weUgzOi8PtToCicB8vmoA1B5Y3GSgxptf3nSDwaeO/LlzIuc1frKi29vwLEyziFVbFt
	6fZ104sRUDJ0orX+yBRbpj3ZjRptk42lgKEVWSdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652102158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bvCM1Mnn+x4EZ0Vjl12jfjRlVzvvyEEIz6gcOuChprA=;
	b=OZGfXMNOplGH8QAe2st+lM6Wz7/7IaRHLE958lo0IWmTJShIKLRZ/hIQxd6k2VE3
	kJkYe7dj4J2w0DaVSPKbfE67aQWS3OszZY3/RCy3K7z3773Js41pp+apy9LhlHCsaU5
	rn3w7z7N92lQZ5E6m7NimLt4D0MUyAFYJ9+HCX9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8f657d8-0c0e4c7c-99a7-42f0-933f-a24524a02aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 959535dbf88db5cc99c58de6598891dafb3aa01d6790e0fef7773f5f50cd477c
Date: Mon, 9 May 2022 13:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652102158
