Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A553D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645898184;
	h=To:Subject:From:Message-Id:Date;
	bh=Ah5gA56F5kxXdfXO8nT1xyGKVma2Ih5zL/dBZq2TDC4=;
	b=QFIK5XCckc0/mon/OOhIJYEci2bvvw1g9IaYKkR8T6ek+2kBqR4VuQPKHciS4bBJ
	GPXvC3+8N8S2YQuOrGdh/oxLqrAOzRR6TIJLnBF8qnkQ/JXMGxEnoYGWZx2OEN6E4as
	9qMK6JqY3H3sNNWoJr5FWKgoMKn998cByUD9AWQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645898184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ah5gA56F5kxXdfXO8nT1xyGKVma2Ih5zL/dBZq2TDC4=;
	b=J9k0P1/JcYZJj9d0+oOaK34hXWz1ZHvp0BJhaG6wVWomS9WZKKAFEeFYyU2Jnbb+
	+j8/amV3rJYvO9PgInFg54+v5y65kpmyj0OoIp8KYuF7DHzpQoC7HYqcqd8hhT7JinI
	LQRt264bORrwCUGcwcGTBGbo+UA/iYJyHmuKKTq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f372d38a0-d605a9c4-c29b-4d43-8338-d4359fb42c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5f488544c4178285092214946e2cf1a3f4b7df788c113c5b6306a33db7b855f
Date: Sat, 26 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645898184
