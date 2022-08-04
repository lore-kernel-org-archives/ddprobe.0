Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278587F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659600052;
	h=To:Subject:From:Message-Id:Date;
	bh=vBwQrd1VbpOnt7fi5SRBcCUf0llV1167rsK3ak8onpM=;
	b=YWLP83CkTSPys3YYUW0OwXBv+qq9BbVfS2QBQPbVmNdiHnGIwHS4BsYKea/jEosz
	rNe/hyoha8mrmKOCoZUO6kO2rM76LfNjEWqOHQAI6UwbhJ5NGr4aJvivfJ4bCIjRH1h
	xzKB/ZrLq0QXq4SrCHfV8Wv+L5F1ajTWu+5nR8G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659600052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vBwQrd1VbpOnt7fi5SRBcCUf0llV1167rsK3ak8onpM=;
	b=hq+hoKSsabHJCLg3GshU+T7+iuD5qEOk6px1BhqpAdjPdkuOLrHG0EAuFlIDS7gc
	sTWC5vsCQ4P/8m2CYgGH3UkYBbvbPIfI1qmjjIAwhgr3ThHwq7q/QRWAibX7FuYO+1o
	sRKY1YXdWTpr7jUrSvn2IJZ2ERQpVl1/90nuNfP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018267df215b-28f6c422-882b-44dc-9bfb-18e5abbc932f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 836c397caf1394a402e09f72166bc5d202e8936f4aa58a3cf72c5ab7d8daa80d
Date: Thu, 4 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659600052
