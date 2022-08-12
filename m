Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397061368
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660305052;
	h=To:Subject:From:Message-Id:Date;
	bh=0OcYcyov7zaPAfxr4uffTRXl7viYo0aaRMRbNv0Ox70=;
	b=iLtLGyWmE7YH/HeyI3UiWm188KnmdRfPxQVS76Of+2IK+eOEDjp0oP7At2+NM3ZO
	ASzo1Txq0CjLKAun3F7UscHZI+AjZ5WyxffCb394JPzeOs0p7SAs/zX7zshJdvBKOkF
	Xma9Me8PJtFtGAYc0fEKVD91iGvkBB9sMlrWfQYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660305052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0OcYcyov7zaPAfxr4uffTRXl7viYo0aaRMRbNv0Ox70=;
	b=ClBvOkAEQ9nf+qNHSSJQ/pDEgHlmdqR8pBjIp69TeadigrghApfux/fDkiy8U24+
	95qS3gkim6CCud87t+5G/wgPy669tYvOEHT3w7pJmZ/2hpSUk/l+CSVe+hekxUYTxER
	0stDRq1bGVNBtm9VQSLp2NBg8738AkF1ggbNZZ5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291e49363-17990ad9-f601-4c5e-a152-acfb37227fbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 952a57d7f58e339fcec52654f8376ff19709983caef69ec02345c6c05bf486db
Date: Fri, 12 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660305052
