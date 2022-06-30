Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3C67B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656610612;
	h=To:Subject:From:Message-Id:Date;
	bh=NSBqN7y0xkW/hHgFzEnEAglJS7Wnf6o1gy0H+9GBV5U=;
	b=ZnXBb2jjBVDA2jKd7OwCjztzwbBCHJdD8HRt6umJDpj1ZcRgYpg2CXRnEV4qUnTU
	BUEOK+zL8XWkocS8I5L7qKkvTiuoRTSA0SaaOf3qM/BntjDp89+I0KBZ0wyQ4pCle6E
	AuvQqxh+dqgF/ZQiAl58koWU0AcBZouAuPY13+8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656610612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NSBqN7y0xkW/hHgFzEnEAglJS7Wnf6o1gy0H+9GBV5U=;
	b=ZTdRalAI4mn4p++NWVCfneohNJdua9PQrD23GNl0bMnwni7ZbyFPSllo6jgtd5lq
	AfWPnSmfUmGc27lQcyHBkchi41tyqj9oWNqp4MhFebSvazaTLyYkdUQmYxAgPSxXH1n
	R3HPaVXaJ30S28IddrXoQh3/I6KFvGoblMxbA8dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5afe45c-96c9ac20-7411-4f04-98d9-e68694243caa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42794e6b06a84b263fb2607051f63c098d11c4b3030d27d651af906cdc365f18
Date: Thu, 30 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656610612
