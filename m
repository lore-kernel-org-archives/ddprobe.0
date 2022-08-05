Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4673ED9
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659705053;
	h=To:Subject:From:Message-Id:Date;
	bh=cB1EC5jBIatHc9p2MpmaFzIpB8i8M3lHKgNJHlENkOM=;
	b=etr7V2hN6cXiynVNFO0vHRv9ftOxNZIwrnNQgDu9a2f+GNv4sNZAP1F2+vB4JCIT
	ly9MPTdpAA/CyEKst1pNySfb7tpOBIS/VblUOqzc+L8kCMn6m3kN8qy+7jcWfB6in7f
	nq7OxaZpvGxj+4splPqHGQI43SlGlT/XVSKbhf30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659705053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cB1EC5jBIatHc9p2MpmaFzIpB8i8M3lHKgNJHlENkOM=;
	b=fZj0CfvvOG4vqODJ9dq5hS3HHEQWZnTIb0y4ffwu/P83L+u9S0QHgi4oUioEXvNZ
	zwW9vaoaTu5eOSW5SoOazgm8cQE+wf3AgyslTqiyqnmlKx+tkHTkWKn/gAIHtukJ6d3
	nTa8jrvNs16c+1EKEnN7KnNnjsO0F+gB++ZNueNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e214d97-47304d5d-d769-4117-9150-ced8a9ef4a47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d3254f1fff0613d12c4a8337b57212f724fb86a270f435dc1b293b606e56c0c
Date: Fri, 5 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659705052
