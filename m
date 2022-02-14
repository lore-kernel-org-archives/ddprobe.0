Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF267A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 15:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644852047;
	h=To:Subject:From:Message-Id:Date;
	bh=WwWoBvyKpj6YemGZlew39N/Qs+6yX1TWpHbSlufk9GQ=;
	b=JWCWkpfLmgEkqO10tzlC/+wUk0LpjWgnMwum7hx0MJpakNghRK37AnGHs3UbYMay
	nMpvx8Am+e2xYa3tvQejLAxlyop+R0bypEShKBn1+nah4MybcXNeU1oTyAtxSFQMQCd
	y4Cj1O02SLXFdOcVIadE8efsjPDbnJfijGnIKWws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644852047;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WwWoBvyKpj6YemGZlew39N/Qs+6yX1TWpHbSlufk9GQ=;
	b=QIeSMZx26ib2VU2kWbCbYLQb7xPc7Xn0VZhNOCjQGj4GWW6MHDHnBnt0sWIslyB7
	fqHrXdK7tcoEsDcMafH1cDMMTrUM4SaR8N5AfmN8y5JZJtArl3cSeL6z79etN8fP405
	ptauZtUcGOJFGX7+cBqtcxzsmMqc/GZld0jS5N5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8d26ea9-a5cbf161-d20e-4451-9b88-3a8adaa18577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99586ab68c77dc0962afbb66c2918344c5da8391f965cee3a360f7f1ab2a3532
Date: Mon, 14 Feb 2022 15:20:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644852047
