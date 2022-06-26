Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3007A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656242813;
	h=To:Subject:From:Message-Id:Date;
	bh=m5tB63fTtWR+NdsY+xpnW0hFPUesIXIzF6jVn+wXH2U=;
	b=WwkaxIsb4w0IolP+0QJdwiyCF3E4tJATtcw/z1ZtrB50oAKLL7JHXzNm1nt4cBgp
	CFpb4IvUXfLRhvnB57ZznIHhHVgye84aH6K4DqUmw0/EOYsEqsNSxUdppg3p6SWnk4T
	20ezzFpJlwnqp7Agqd7mVYnwxPZ4k8xqeFbOX1ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656242813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5tB63fTtWR+NdsY+xpnW0hFPUesIXIzF6jVn+wXH2U=;
	b=hSvLZf4AU8BXb9HxIAaBwAiK1plqZq+Fylsm7UlvQowmrOPHT1IdCFJOlvuzh9xT
	Nw/9Az1lE7AcCyr5WNFUpG7PPCwA/Lj7NRz4bZU7jTowUJfsvic6ft79nSNqnNbd1oE
	JKrL9uTUTx5wv7jAqYdFWfzKNxXF5dHOT4VyBcSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fc3b5a3-9cc70f08-5235-4454-94a7-41946ced3c62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd86b2c6e147cdba2bb6e4bbae216042239a7f6de0293b402afdd329f4f79171
Date: Sun, 26 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656242812
