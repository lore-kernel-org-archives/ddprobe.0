Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0408C4429
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 03:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656818212;
	h=To:Subject:From:Message-Id:Date;
	bh=wlmxISPatCDZAYRuY9eikha8kSOrPndVr1/O7+GqvLw=;
	b=gPJnpXZGa/TzJgjmvhltI5xBvBvTTNE4P1S3fBPo6VYKvbX7AtmC0sYMHnkHflN4
	fHI1AbcVHdZY/6dOKFdRM0guQiwubqp/KcpyRqjnACugfT/FUqowuAgCj40IID8wGRr
	ptHx5xhiGq9ilhxST44ffl6NfTRqMneg/i8OmA4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656818212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wlmxISPatCDZAYRuY9eikha8kSOrPndVr1/O7+GqvLw=;
	b=EdVPm4UJLfAPS3lOcvTlP2rIqBo5kbJGQdNE/lwtIPtm3amZYxrhHnY/ONJyCv51
	xLPTjqd/n1BTv7wTwyNqUpM9YgPxSdkE9IdXG+t00QtOZOYSnF2bWYM+AFwsMrm/PjC
	oQcK0ytzLlEB9gFBWNA25p/d2CYB/Rd5q8o8zY5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c20f9d98-2d929725-66d5-4143-816b-558b6c5af4b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a26efcaf9b03c98a4c3f6aacb3fbca2352e4e41ec0fdc97f83fb1c07810cd75
Date: Sun, 3 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656818212
