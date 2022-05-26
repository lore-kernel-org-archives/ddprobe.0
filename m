Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5725C10EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 04:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653540779;
	h=To:Subject:From:Message-Id:Date;
	bh=ziB9w+jtWcFkdKvr/b0ikVIPrOPL8+1cYE67YT4gp1c=;
	b=DefvC6uqBrntPMT72/wzBsUIfS9GPMMxfKWsL+CUYreBhKnNAMyEVUE1Y3SQWbuI
	X6aVpHqODVrs3rn3aKTKG5Lbvwv+ly6Z6zn0EcdpktWontm9fWSJg1KrWjJHREr5L4k
	roZytBGeT/UUgcB4NnR1ypOo56Il06Y9NVfipf3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653540779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ziB9w+jtWcFkdKvr/b0ikVIPrOPL8+1cYE67YT4gp1c=;
	b=SKlMDYRDn13LjwTxHs4sXiuj5N5wYbVgp5CC5kqxoxX7xw//7dkH4nHEA4l6pyr1
	rwnBBBcHNlGXy8SmxDhKyx1CM/B6Q013KDZW7qVlqKsZNTz3hBkvmkesQKXDLn6JdW8
	I4aLN63wYs2IxSZww1i3mlc3P9HRSuCwk6zwf5iE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180feb5f4e1-99b35d9a-cf95-4125-8bd5-910f6e093969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b269d14763ded7039e598a43509568b170cfe729b7c4d8358eb8a705c5a48da1
Date: Thu, 26 May 2022 04:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653540779
