Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632523CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660906252;
	h=To:Subject:From:Message-Id:Date;
	bh=qCOS+JmMrtVjdFFS5y3a6qRcOMXzR1C8PzLhDPptjcM=;
	b=RnBZK+H9i2kNRCCsLSDEfCDZf32HwEMTY7a5zeMCUY4wzCWjPCPCj7jvrdeXhXW/
	uxtTndVPMSE2UP1AFycgWDhEMl6mXXRGEM+8i457yi97ZfFDZ4Q0m7+7MxaLWpPIWYK
	xWlrYXjk2qdInqk3M/bPKVfsR7V3Ogt2YgYZRqtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660906252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qCOS+JmMrtVjdFFS5y3a6qRcOMXzR1C8PzLhDPptjcM=;
	b=FOKRORqrAIg7sCu+0Lblx+iaNzEBwAlFCvuUmn/605BL+77LqxMyM6nZtHh++8KF
	FOWYyQV03d+PeB8lZL/4ZWpFE/upggsDIOMvPHpOi3G5jtPy9db7UR6KhViPAAmipPL
	gJblSrAQkSBt4zX4BLKf7hLgtpTyXhbYTaGW/fBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5ba291e-abfe5e37-a89b-4770-9f77-a82704942575-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c581851b02a8fc1541404f57f82e55f1fe4ebda31791be138ea188792a15124c
Date: Fri, 19 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660906252
