Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1621373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645736484;
	h=To:Subject:From:Message-Id:Date;
	bh=G1C9Szc4a47wG5MOPJJTwBAukIDds7YXvN728YH4zAk=;
	b=S5CmDk9eVFBkogA+DIiy4nJ2ASo90vmJS0+CVh6jQfZ/1rpgg+Jbj9hhvLdgayoj
	/SvzmF8/OBp1w5t4id8xRhgj0WwKMt6Y7YGIogF+CyKo7iEq+H/E2WEM1qP5W8X4XtO
	Z9MJyxrPvyeuNbXlD8FVuSMsriuIE28D0FYegw9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645736484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1C9Szc4a47wG5MOPJJTwBAukIDds7YXvN728YH4zAk=;
	b=UP5tl1RCtvjguS/mJ/CBoXU65alQIxwBZI9C2MGMfEXqLw2Ots493KLwfZmxDIqU
	jlYc1YBaTq5B8d+j6uFRdhiGOiGICaYYDGYD6D0/TLZZzoPi1j53GiOVEXNUZYb1onB
	8fOKrwuB/9oWraw5dAxQSnfCx/aLm/S9RdwS2N5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d89dfaa-62196171-d3d7-4b76-bb1e-8bc64c8674e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff15f03d6a71b92e9aec91149c41eb8746b7b869787c21b217490bf5a146bda3
Date: Thu, 24 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645736484
