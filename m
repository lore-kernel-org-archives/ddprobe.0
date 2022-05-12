Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5054917EB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652340479;
	h=To:Subject:From:Message-Id:Date;
	bh=My9KDuJZ2xNMtpx2YbG35Kda3GVwWNkIqsuqmhFVDMw=;
	b=fxsOlPZaUwqFjQ0tMKZk9ZgtHqND9DvXwev64wDKLrMuNqKLhqJe4YWWYPLQXUav
	BKMo/FEIwzotjgQYunDBP8Y1W5pkniu/vT1nZRI6ZQ6swsbouFy4fC9yq8GhFEvszS1
	9ESpdix4dBzH4YFRiVDsKA4nXVJYVLZQEgTdsD7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652340479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=My9KDuJZ2xNMtpx2YbG35Kda3GVwWNkIqsuqmhFVDMw=;
	b=Af0Z4why7FSWId3WEm+48bvA/+DrgB0Ez39htFHxAEIXnTHZoTpcN07WFgNju5eu
	sU9CfS5KOGElrwTsiVHkXUoQa0wMR7RMjmyTOSqCkQPJsDVvzG/oUDUqZErR95jQ8JR
	r4KAPGPqPEJAzPTy0C+12pVpiEjWnQTHvWxTHbWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b72ad501-08b4a72c-85ea-4cf8-b390-90f077cd9a0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 154937ce6bc5bc0ba45a2a1a60cbc8d3ebf1c78222774dcb9c0b13327727dee6
Date: Thu, 12 May 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652340479
