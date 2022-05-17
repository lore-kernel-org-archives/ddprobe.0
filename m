Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353647A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 19:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652815259;
	h=To:Subject:From:Message-Id:Date;
	bh=TeU0l/F58+FWQQLA2MRn2t1XUqdS+3bYZ/mqNDZGHc0=;
	b=CcYGb1FyB3j/wv1EzaQfyJXdQcX4ns50Q/xL6dyeuGI5NAcLs0EhzOWalR3Lv+PK
	7dRzZ4KBtbJW0C/qbvAIOTlRnVSawLdOovegOAdKnE9tLRBuCZqtdcRuXpPuchue8tC
	bL0swUv2pQBzfqOj0OgifvqcVcQ72QrUwBaOMxB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652815259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TeU0l/F58+FWQQLA2MRn2t1XUqdS+3bYZ/mqNDZGHc0=;
	b=CRzoma2OP5Q2YH1qfFDIzWNiHdlaYUdV4LyH3EIhO3TpDxLQVGsA69xjb+NedQ+m
	axTr4M8dkmhbcx1SXlDU08/IOYzXxdaudRyrVQqZCtOUjGrRWHPIPzhKCxJ0zSohFzr
	PvDOp/YEikWww5Ex1eyyjOG/GUnwkAvEOv5wkunw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d37766f5-16e6e286-3b78-46d9-b1cf-879f1dfaefa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56e4e9571e277c3174b8e9a31af6f389f2d6ab119751e2db8f9c5d1630026a44
Date: Tue, 17 May 2022 19:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652815259
