Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ABF1C29
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659015653;
	h=To:Subject:From:Message-Id:Date;
	bh=fR7GJpVTtCHD8r5kAhKdhcSgReYj+jrnZ7ut6Z0EGZ8=;
	b=R9EJKV00NkxAd/YPM9olWTSFitfFHzTL+IvFb2/9SZmEi6fJ2EeG7KST+ABjxw85
	36z7+ScJVi/+WBeW2kv3asmIciYsAd/q7I/iRsy7epW1e6pL/sFP7OddqxVUInD9/wj
	hmwG1w/aIavrmyI1yN0W8MYj9/uGHF+AvOPV8i/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659015653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fR7GJpVTtCHD8r5kAhKdhcSgReYj+jrnZ7ut6Z0EGZ8=;
	b=GhE1gLc5vNfuEZV9GJR4n/Mjg83FBFbkOTTPy9IplWhH3FFtMRRiABajoi7f/vAR
	il5YPJM5IS8pWvfEbLPUlsL49yTM5BHfZgqOaKRE8j5cDW3ByGiCPWdjpF5EOrKCvxY
	PlObXFABvj7jQesdsbT9cqyRf9o54xLKvxPXL+uA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824509e4eb-8d95180f-e31b-4356-8786-028193e7e5e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da77d8ab460d3cb7b1dae24499eadc0b9cebee8b732627892060c7da2dc95975
Date: Thu, 28 Jul 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659015652
