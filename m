Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016B77A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 12:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650544738;
	h=To:Subject:From:Message-Id:Date;
	bh=Z47ScaaYPxqYnqQf0h49MJEzRtA+I6dhwCzsUYU/APg=;
	b=XnNe+t1jGTyvfd2OEJ6tXR+JZAGNBDZ/qDKKX4muypqZZXfUeVL0v0kwpIZ2HCj1
	E9y2uFsmQ2uYe4WXJcHQBO76SQinaD82vGjG93bJfxJwGiKY48y0A/h0LKqXBa7J9/R
	xTGuE8q03Gm1YU15GsRAVpZ6AXZbnTYh1e4/05Kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650544738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z47ScaaYPxqYnqQf0h49MJEzRtA+I6dhwCzsUYU/APg=;
	b=Otft42TqeJpCbBV0V+ToMufC+fe9Dh4tnnphriUqvOhRv+4o6VSgkOaduASX8Vlh
	KfdG84h3oRGmrWZ/pKgcI2M/UN1WuE281vuKCCM0d/G6dGXTNDBxlfqp6ynsQAjhdfs
	rQDLwYSkEHOYIbk2zvA8u+lwGqtvAZRGV/N/dPpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c21ffe1-59a5230a-4b84-4188-8060-6ef7ccc8ffeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74244ce291ef6a0703b9158c91e6ccd6a78781e7dfa55ad3181755eaee03ab46
Date: Thu, 21 Apr 2022 12:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650544738
