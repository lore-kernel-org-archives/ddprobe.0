Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82592A50
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647983185;
	h=To:Subject:From:Message-Id:Date;
	bh=lfbJXj2duI6SW6sSiZH0AHS7o35VnUlqkHebEj4Jgdw=;
	b=empn/ddjxNothaykVes4QrVT3oYvvf1NuYR9HXomPol7Fxo4VCffzdWTJXbCq5Rh
	VWze4cnuD0vra0CBUBIGtMkzze2ERTeMh0r9wme6JkxQjJdSqSiEXtqQVvn/nSJgCIU
	O7hKUZ+d5aUpbTAJ8ZHf3JptD7LKyy537eJtHICA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647983185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lfbJXj2duI6SW6sSiZH0AHS7o35VnUlqkHebEj4Jgdw=;
	b=CFzmVrKdVZd3iASPOfCfpbkyJm4/kKiW4lowBIR6h4nP3nbzlNf4W5JsWah4ymnS
	Yh9GWWo9r2/LyCOYjvuTUF1c4NAwP4WVyqq0kX61kdE7EYxpO0xNEKExvpKRB76YxHh
	r4uvbrFhJIUZk02Eg/44XqdIP9d2a4HLMbbEQOsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb373cbd8-d87b64bf-ccea-4e71-be40-a1bd8c6c32eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6706369a4b005ba1845c8a085625e7ef2dc6e22f0c0084cbb0742434b8d3b716
Date: Tue, 22 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647983184
