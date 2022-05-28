Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DAC7B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653756119;
	h=To:Subject:From:Message-Id:Date;
	bh=ygLQA+mapzW+JbLuEx1hzpOh1vAu3I9AYRZ8VC7rGh8=;
	b=SXjIe6qPzYY32oX4oPh11pqagVXxPzktcolfsBSRJQmlGqYNPls47qZnr3+UQJv2
	RyAw6TT2UMQf+0eRntO0ZCG9VhwNuuhZOCFrROjX5B1iwCxzPRaUhQa50ATQN9AyI4b
	ChXudcZ1eZ1WtLIP/rQCcjJ85hvGcOkcI9ZMdUJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653756119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygLQA+mapzW+JbLuEx1hzpOh1vAu3I9AYRZ8VC7rGh8=;
	b=SZVwPkLonaM/QyKbB3mPWKjBCwoDt0wGd3oPciwSkaj6uWVruvySatP5hUME9Yqf
	4BA1RsgehknCozYGHX6dzt5tUupLmnPabVUZPpT3/FwR6EGLHRebPo25YIBUDFzY0Og
	PYbqwOiVrSA0lFk/Oa8F62+PoTKeBuELnIlyMXws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b8bc8ee-af13a261-746b-4ecb-b135-f36043517ad8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de8fea5009dfd31981a1537382f2d952811d1032a48d8634e8c80ca96797ccef
Date: Sat, 28 May 2022 16:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653756119
