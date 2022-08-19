Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42894193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660873252;
	h=To:Subject:From:Message-Id:Date;
	bh=HCCSFPv5vP5zstYmBvRQ/dM5+KNI5NOGYLL7m3YhMhg=;
	b=Cc92eUDehtOm7Xn3MDjD2u2spf12oFSX0TJePBjQEnPEzweBdCxziB5TpSCqDNgM
	CArXgFoa/g0Y66fCP+yn+KuGMXFWE7tKPe/YgobaRjpLd3Lw67wk4oPuQ30fjzSOCyj
	ctWhxIoXyDNrU9JbxhAgEiDbPwoIxqTI6IFfKu5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660873252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HCCSFPv5vP5zstYmBvRQ/dM5+KNI5NOGYLL7m3YhMhg=;
	b=dRT4yXujLbV0AOHkGLiUP7VoOKU77Aj3nTFouVy5ZCz+R2WQu3ho6srMPNObK9Lc
	T3tFDp0LyQIVUPfwmRzW1i2MmIckDuIRT18caf0x6kW5gCoKKNuynJyFwVa51Zu2KlJ
	MU+P6W0NRkVQCe/GY0uF3S1E1bcxC6qAqv6RrO0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3c29f0f-c16ebb50-7a7d-4f66-bf7c-97643237e702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cce8afa6ca463eb4086e4abc5042fdad24565a1dd591c430acba15cee8e2ca49
Date: Fri, 19 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660873252
