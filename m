Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF356D19
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660766453;
	h=To:Subject:From:Message-Id:Date;
	bh=KA4MV4uDby4NDGF2Cz5iYdvCcYMKF/Da1JYFg93Awto=;
	b=arbeEzxWuh5Q3rh/tm9PWVINKnJq9o+4Fz3pk7hKebhOuq1oeMJ6NRz4dFjsdMvw
	cAEtvV9m4tH9BJi8wLqEJ4/WG14xrYd3eWBc3Y5jVvGYKVZRk4BypXjuObtDABEXTw6
	Jm9+NEEZfaRXewzWjT6SSKdf3roGmqg5QHU7AFvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660766453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KA4MV4uDby4NDGF2Cz5iYdvCcYMKF/Da1JYFg93Awto=;
	b=elHDr3iKOHtcrB459Qj05qrUXEsBAsuUs9EAqDI5bGSjp9Kh2yKi2GLlcnsKti9J
	OF/415Av6saQk1xaVsYBaadha7SRMlf04atUgZqesLEGpWFd3YBm2ykP2PlGtWa8k7l
	V1zRj5yl6QIa7c1aYbjefJUAWzIBVKOrwhtIR5wE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad64fb85-c4893b3a-9bad-4b0d-afc1-feb8325c8ea7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f47ce139af62e25cbaa107a5784d286add4b4dcad10978d72f5f2823a31167f5
Date: Wed, 17 Aug 2022 20:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660766452
