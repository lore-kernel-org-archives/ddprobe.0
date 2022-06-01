Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF233D6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 21:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654117499;
	h=To:Subject:From:Message-Id:Date;
	bh=RZHrRXs/vpyqMtvJqcW6TpmAbiElrXRpoafmPh+P5wc=;
	b=D4ED4on35YbHYh8NTMu6fJhQX5HG8VsoNOIp1/J++FW3Em2/c3k1h9lhX+LYOPcb
	qXQQ8kAEgXX7DJwBDO35xi+OCIIugQM+pfXhUsAHzOkKtiN8zDq6nupCtFVUNamX/17
	9uMiAq/VdhINxoC09jN8lZMbKzuCCVnNZDsfRBkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654117499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZHrRXs/vpyqMtvJqcW6TpmAbiElrXRpoafmPh+P5wc=;
	b=N3CbaYQ+9M0Y6Nm1KWHzOuHZXzmEwPw7MWYVt2I4KFv+HHa2Y2WLTd6faZMMI5zP
	yHw2+b1+pfqa6BRXkCQh6qkPKs1x1dHlm67kuCwzlcaDOQKTSw+WrH9Dx90wAtRb213
	s/Frx/NvcV4kvdoq6VwUEVO/K/mtibB/b7jTa8Qk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181211601a3-e4c20711-13d6-445f-b0ce-6defe450bb2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79a30a17f3b6238c733348c2a9b66ab3ff4d7189a53c4aafdbac6df10519dd66
Date: Wed, 1 Jun 2022 21:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654117499
