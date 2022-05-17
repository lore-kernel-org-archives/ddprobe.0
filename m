Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E4E10F8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 04:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652761379;
	h=To:Subject:From:Message-Id:Date;
	bh=XsuITtgIrAuxb7RxwCKkV+0g7yduqoTFQ/hbHPhyyrE=;
	b=HxMrw5K2lmYBSVg+FxTZiKsbEfML4rY+pCPoA1uUayxckTbxYZGat+gFRx5IHRU7
	OQrTGgoBZ98AnDX6RZIZrFvIvknLs45TPF5PqQu78VNU+PELnax+XbZlobqBwPjv0cE
	8k5qHmHGhiPfPDm1l+1TWxWgfq8xf8WK1XKYVxko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652761379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsuITtgIrAuxb7RxwCKkV+0g7yduqoTFQ/hbHPhyyrE=;
	b=JQHFwYD4Tyva0JaXigdLF2qzjt/EXCLdwxr4g3Gp6j3MWBFwTaH0p1k6Kd76nxGD
	LqJYd7G9i3GuY8Jq+ib5eT6k8q9PC8IiXm+XDaOoej6jKCk9vx8V7ORGa8/gQax0E0u
	rjVnZy7wXwgX0TGyAPZXX3iqtDUDlOP92L8lBPWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0414244-834742f3-4f75-4833-8656-15c02df73a78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8df8fadb53a50b4d8cfdcc8db7fa40eb532d96def24d6dd6c93e370b59d94138
Date: Tue, 17 May 2022 04:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652761379
