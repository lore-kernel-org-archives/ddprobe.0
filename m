Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D4410E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 05:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651208818;
	h=To:Subject:From:Message-Id:Date;
	bh=UrpK7Hmu3pJhk5q6CldQ4/evA/UhHrabi1oXwYkiz8I=;
	b=axDaAb9Sp7tHGm3lWZj0X12MZuxqP8fz7v4rhICdaXMHaPLYA5qA9zlhoMcEFztG
	QBwcnYGKwsxQJ5rwwVbfbeD7H5A7rXX8lkd1ENH1kHBKet/iU+zahFA/njhIAzoFmsl
	idmOtgadommnE7tK+2dBr1h/1SF8GUBhkfkZ73PU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651208818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrpK7Hmu3pJhk5q6CldQ4/evA/UhHrabi1oXwYkiz8I=;
	b=BEHs8UPDcu3ju7kP1CXjGofcgxKfsMN9i37jzdnATVhSYLF6OeZ0jU3RGR5tZ4f0
	M++/73asFLCzNOOyPPzDP3cX1KG/3g0BSpxCFPSEKBqnqX9vR1XCisXL98ltwwwvAgB
	tzyws8CpSrQTTzfctaQGZps0QV5KwkLIRTyiqiV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073b70e4c-da0dc1e8-004f-464a-ad56-711ec0f27c4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f21c39da64bb3a4e66fa2df7ae7dd1adf881cdb4960f921a0ed442a5e17a5004
Date: Fri, 29 Apr 2022 05:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651208818
