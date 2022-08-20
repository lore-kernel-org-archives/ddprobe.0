Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9817B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660963252;
	h=To:Subject:From:Message-Id:Date;
	bh=VF4JU3/CiGoPJiYtXs4yHLt/slcgO4lJKOnF2/Y+57g=;
	b=gSzClFwQ9vS7DCy6K7w+IXBLCFVOVyQaWcYTx97YG9LB97jDVfOl4Yf++IqJYlE3
	/uMS0nQdRrmq3MtZL1xH3hutpMRIRZ5IjC4Z56STfmO3Ew2yDHmqCkb0Udh5718YBd+
	Wpfie+dvYDF0MfFwjcskm2R6PNFcaaP2NY8HaNGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660963252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VF4JU3/CiGoPJiYtXs4yHLt/slcgO4lJKOnF2/Y+57g=;
	b=EVEH7cCi8Vyv96ZUF8UzfXC6sshjYk1Kj3eAv18lQXfLKH9HFV8UhmWkLLX0EdO9
	kRshvq8xwixihcLKZAyc7g5g4aoVTRYIZ3bQoaK1PCo6lB2IOqlNJgxLYtPZJX717T6
	eDlFnRFnHHeE0UtW2OAmg7wTNI1726yvM3qQ9yl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b91fe948-30bffda2-2388-45d5-83a2-3c6e454b4856-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e332bf5c013bc540b8d5cbc189bf9b1f9cfea5cf2349f6e30e9cc6aed5b17dab
Date: Sat, 20 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660963252
