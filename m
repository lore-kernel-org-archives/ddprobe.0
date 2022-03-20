Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBC97A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647765385;
	h=To:Subject:From:Message-Id:Date;
	bh=kGVZGeWWQoU8VwyhvDwuHT7yEZoXODIbhRy3RO9BOXE=;
	b=T5t414XltwW6hjq778BUp440VXA3ccpj5ur9zl9ZfJ39TkAhGBqLXd6tUWMGWRd6
	CvEhYqxXf463zVX7K0zsoCa0T3GQngTwksvw0GkISnm5hnXiIY5lZ0bj+uLJ+gnLeuE
	zadZ9BZ4wEZ6p1n0umKdw/cyBuBwN8yRq8QaNE1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647765385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kGVZGeWWQoU8VwyhvDwuHT7yEZoXODIbhRy3RO9BOXE=;
	b=CTUt07UEnNRq0lJkCl3YpLOIFxwC28tL6CCEGEcBwBYdTL9o81NmpRtn11zP2SjB
	bQ+pK4S4j/Sy98QIOzBQBl0OvIOiV99nH3prqUOrVZdfu0eMOs/1PE+ycio7W80LeOH
	zl5Oalc45HQTYi5b8bB6Rm5lgX7akWDgiwRsKQ58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6786e39-ee995284-1b31-499e-9f61-174e912afd0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d332e1e3bda61025a24ed0288cc8812ad84acb69dde102af16b0fbc11ac4ad03
Date: Sun, 20 Mar 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647765384
