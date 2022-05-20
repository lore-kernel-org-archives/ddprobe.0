Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF962F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653068879;
	h=To:Subject:From:Message-Id:Date;
	bh=k+E5xTkD98CNMPzhEpBhXhEUjdXY5XA9pPCGp5gYFiU=;
	b=jbhY4K4nJ3av13OU4hViTnvJKNOQezqpjQX5mK6ZeBgqwJmbqqKK+wychqavgUWS
	MCofPn7JHFNOehOYFvb4mkZl4R4SiOmbF4I+y/rGTdh4bwtgxxqZAP6/3cH9+pJfoXm
	On+NnGXbtB54hQZHU3mnKifiWRnzXyOoCBuJFe8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653068879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+E5xTkD98CNMPzhEpBhXhEUjdXY5XA9pPCGp5gYFiU=;
	b=IAYTgkMFraUKmECVyohglQAAdJwoFwxzfXLGGz24V6ADCzzMuvD2iOIU34rHTg/x
	W7ZGO/2HlsuV71ZMT6V96vCmniG9xJ9gD5SRcWJmqdy08mdBmlUKF/yeFTBvpzyZZUd
	J1I8/DeBK8o0nalVlgGccTCh2/tmCBTxZq7oFaI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e29555fb-0ad33df3-e89a-43f6-81d9-566cabe21712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d377abca76fb0bc2951a1055d3c1cdcfebad1ad5b49a20ade012d2d16f9be7b0
Date: Fri, 20 May 2022 17:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653068879
