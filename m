Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC75173
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 12:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652445899;
	h=To:Subject:From:Message-Id:Date;
	bh=clb8HZWHgUdPHlfbE83BLvsETr+dI+rQNfJHU+CWUuA=;
	b=bIwAwxEIzLzSDuOU3lStpbf+x6ZRxFvJ6PxANAdM34lAYXxcIR5zvTv9+NHcG6UY
	8ycgQ1FKCp8JvK3Mq1oBetpKTt2fl8zz5hDOQyOISpgzudg5LO/VOBVr/p4TnYkXCX+
	jQTaoa7kCTqrAgiO69YfRZNedA/uCVjyoUSSwLG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652445899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=clb8HZWHgUdPHlfbE83BLvsETr+dI+rQNfJHU+CWUuA=;
	b=JGTOLr5/zu/H7rFLTcR/ugMFQp2FnPsUGejRPqjK7nyr04DGF0ANb3PFiIJ6pU7k
	GHxduw0/S4OWtvtUMMhC6pD+wLb4qHn5ZH2ZYjzPaEsL3i04ynN07Q2Q8Y9X8sNEmgU
	zD6zMlNviOKVj6lgs3q+5tmj5U3a3hKtKZJg2Ibc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd7369f3-ba2b8cd5-a885-48ca-a93a-b014750235dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40d6901456c932d491a7312ab2f361d98b6e861d94e8383629e9b06ae9767a87
Date: Fri, 13 May 2022 12:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652445899
