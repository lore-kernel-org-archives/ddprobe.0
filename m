Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84877184
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660101052;
	h=To:Subject:From:Message-Id:Date;
	bh=mdfbizeO7kHiUhNhHRrZ0MjmphES5YbMgBl7Mb1BOh8=;
	b=e+cOw8BfD/tPLYzTYc21fmOqzsSaBSheT/FOfAFp54tv8n/MuWRQ+LT0HRhqqWB/
	N01fkH5zEZIphbv/efKzB1IP/3gX/jBkuIKlI5oVHlKZKwtfUOjBwcg28mxbgxofrXw
	Cv4b+Nkqja9EBvEGEDD7DBqQbFBVc8hNtSuzmYA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660101052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdfbizeO7kHiUhNhHRrZ0MjmphES5YbMgBl7Mb1BOh8=;
	b=anqJ0HptcxF0FDj8r2OSAhQ2oYunN0dDEBtx0iesaaSOSInr4NBMWpUlGPOtb9aB
	VRaWbRiiYya7icX0z5JED7OHexXQvIXxQluSygb5d+AjMGBmLlAVz3xBo9t69uZl6ye
	BdmNPUYJhAIxQ2kRWePIgxVzhxNnxvF1H0eOeuNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285bbc8a6-1e96b77e-6c82-48e3-98f4-d8872aa39c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 595818fdf02d976f8afe4099d4c5534d02ea320a03d8825076492f642a26a160
Date: Wed, 10 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660101052
