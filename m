Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132E87E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 05:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655704439;
	h=To:Subject:From:Message-Id:Date;
	bh=VlHAuuRVCAbitOndEuYLjJGdvfjUaMxzxVR+YfltwDg=;
	b=DE3WsI4yKQvTQKljQJzCezGtXGjYIgUjXaOiXUbhMfJ4jaXCcL1ogag4mIlko06s
	StaNqje+1b7KuyzbvjL2ZbAaZj7cqNSiLlT5AUNaH0nNkX21DsGRl+QRs9zCnQPQ63e
	OLPdSsLE1TOayF2O2mrn5CmosfewAu3z9crdLV8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655704439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VlHAuuRVCAbitOndEuYLjJGdvfjUaMxzxVR+YfltwDg=;
	b=c12+gj/nmoJc6zsiRBGt62jNrPMtryhYN1PoYJD4kdQk/txKih4f8XOv3hthXbUq
	8Y+w9nC7rOGHYSLN10PyriZSwkh3X6cX5nHLR18r07IsBEuK+u2iNH3IAHRFWKCTjy1
	i625v++7ob1CgNaYQK4g0yeUF7b+vHOvQOshK+/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817facc9e0-b04d4fab-5790-46ea-9655-841f611976e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7078410879397ed00ab5178764f4e404a440e4dc356f69b1306578f49a0a795
Date: Mon, 20 Jun 2022 05:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655704438
