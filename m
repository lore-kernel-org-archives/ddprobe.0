Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7312A632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651757758;
	h=To:Subject:From:Message-Id:Date;
	bh=T3VO4pAnZyOoUFcIuBmXK6jL9N1NWd8Vzz4UsnYDmGI=;
	b=gqBebX8MA6FAwisYwNWarcPCMP0Y//+6xZXQrW3d05369U0OpzU5BHBY6KOriLvb
	9ncMqmR5M/HZunFFMeKxoKZ3ewORYPx+6oE9TSYOOny01d+DoDQEBcCrYUUAPnrw7m1
	yMdfrj6M+DIzHOUJSORwZkg1TQ10HgTGzs5fTG2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651757758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T3VO4pAnZyOoUFcIuBmXK6jL9N1NWd8Vzz4UsnYDmGI=;
	b=T04Lh6RyRxEaeeWMPcuxzEIHMCec8lca8BQ8SZ6+BM8XE6RRREEpTRTec0NZ79fo
	jslGa74NEWbS/90ykVvT8VxnmChqB2WRn/fsctzTJwKYU/Ag7OhN5OObw3Y7+K5a1ZA
	2QeYo0L5cB71rrR4pq432WbD9lMekdai6IR/Rdkk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180946f372c-7ab980e5-02b4-43c7-b12d-76112d152e94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ced45cb439b6c1bed714b1e05546dee42ceaf150ad2f9260895c8fb031d65224
Date: Thu, 5 May 2022 13:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651757758
