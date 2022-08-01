Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BCF7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659327652;
	h=To:Subject:From:Message-Id:Date;
	bh=At3JEumwaoOr3UZc9PTr+m8ZqvlrhgflXc5/Wk+dkTQ=;
	b=IA9W0ocqGtttFBnw3Wt0fOtH2vwgIE/ysprsu650tcYdShSXefOjQfzM+XdpjKS0
	H0i2iRZIFzVxZmuMF6EV72p7moEqsgE3ZOaz/urzEc8f5YrMpu3l1gP5R7CJlHWolF9
	72Ofi1uc9vWY8j3VvR6g5iLjhqEUYm5tnSFtpl1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659327652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=At3JEumwaoOr3UZc9PTr+m8ZqvlrhgflXc5/Wk+dkTQ=;
	b=KsBIp3NfezZQ89f8UDUjFU07L8JVlRnzs5pAn/ftpWaRKSKQtgqEU+Hr2KFSRrrE
	ZRz5/sGn47qN8wYqYPSw3dMgBmQj+iCK4nY74IN+bI359QglYrv9+UVpChyFRRjRLd8
	C55lwNF89/MYks1TSN4akveWaSqia4iKN7YT+f+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257a2a2ba-9a5f45dc-b69a-4272-a80b-f2a0fb381c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83865863550c5d5b456ebf04a1bba0e8b7b4939e9977fa3658217805e18690c7
Date: Mon, 1 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659327652
