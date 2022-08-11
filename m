Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDE129A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660216252;
	h=To:Subject:From:Message-Id:Date;
	bh=1qdhgt651g6/nmPXdoqIJ/3QMlz73s+oytolQmQe4Pk=;
	b=jylf/C1DMeUaJ99zFUyLKL90uIxmuCYu2oYR64gtWvxHl+nQKQXqyLRgJgtkRwYi
	kioEgsHOnxiXvuY2jCeNiv6BX7jzrPAOOeM55+suiRz4cDGSFtA8miB+JrvHI+OWqUm
	uevs34WUoDFBnwKO267+xQuddPP1gECGMeCF4U2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660216252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1qdhgt651g6/nmPXdoqIJ/3QMlz73s+oytolQmQe4Pk=;
	b=eVta3xfwZjVyn0j1B67VQP7Z28NCAU3l7/ojIdnL34gpnBvpxfKircZhJPrb1fWs
	eedX/+RzvQSlD5sT8p3PYMIHlWMxbDmARC0fcs0c3bXaSETc37uHd1sTqCb5Y669va/
	iwi3U2TkF/xCoQqyeoAm8qpTmMjAu8N7bkQQqpTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c999894-c58ac7f0-20c0-4adf-be3a-47e9a3793719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f182fc55b03365c6e49e648a639900ab1fdec480e99d62db976fe08559047ccb
Date: Thu, 11 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660216252
