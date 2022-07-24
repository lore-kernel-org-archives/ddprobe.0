Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C128F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658654812;
	h=To:Subject:From:Message-Id:Date;
	bh=XjzA3jH4HSgWkLpjGg7fUe43qkdfatBgFYjnbpL3muM=;
	b=edXxGU+rqX4KU0Wm3mK2zNS1bDIEx7pSHmv/AGNRGezJWVcBvm1Uw0Y/k8nsA/Tv
	JD2wdQNf0wFm+9LPASTjTHKmVpfRt17VUtpF5AcgEAlvp8ygaT/lN8pLr0M8UU3lndz
	d9RR76tlPJIMLW9Knd4lfeaFc9dGRz4Ue/tVa1O8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658654812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XjzA3jH4HSgWkLpjGg7fUe43qkdfatBgFYjnbpL3muM=;
	b=krejJGeDUsi/QUK5vYYcc5dowEdVnXbW8n6OTPqnWgHt6LApZuLCx9I6fnXqikex
	XF6AC2AxyoeAAHWYS2vfjjkXPWNvVoF8Iyg0t6UNxwU33QQ0p8zIVZ/7Iw+SeL2xG1q
	OGNgu9WQB4P0UhoBp6sKsKXZPdzuvcM+W5AOhu0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f87e872-1acd4fcb-1279-4eb0-8710-c22351922c2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6f8cba2cc3ed7e32b0c737dc03465b233994bc4226dfb974305d8828c317856
Date: Sun, 24 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658654812
