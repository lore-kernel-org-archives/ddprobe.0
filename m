Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F276AC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647384684;
	h=To:Subject:From:Message-Id:Date;
	bh=I6MbHXqA0rO0Gt6gJZb4rhq3T3W0LjWxsf03E/fv8dc=;
	b=hZ1g2ELmWvane6Yk6dKFPdnjHgDD8ZB+hlF17Af3OVBsvrRNZxsAuDYwsIftMGL4
	kphkA4C8GwOWYQKm3YzKrPdJ1RoEFGv71e19oYqn62bLlAiYn1HdraFQJ7nCLYajEn0
	9ySR3kBfwdIJMeH9mz2QEF/Wg3eQ1X4naSXTHx4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647384684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I6MbHXqA0rO0Gt6gJZb4rhq3T3W0LjWxsf03E/fv8dc=;
	b=VozpKTZZsWdv4LGu/xnMTg9OkwNT6F9aZWYSMcYSxXXh8RdJ4o21O6wWhAAKZSX9
	/6eSf8ojP5rxvAhmCTknT4xt6YMjssRxlfR3nAJoX7ECmfGy9OWx/0r7F4t1rTsOGZv
	FARUrwppobqRX/03N8SmqrncDpko+qc7ErvlfYis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8fc768bb-cff687d1-8962-4ac6-ab2e-bf043ae91ad2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a895663cb28b590b3ea58de84203617a676afbf919881eb680f3a84b14c4d135
Date: Tue, 15 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647384684
