Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115BC7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 17:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648403098;
	h=To:Subject:From:Message-Id:Date;
	bh=QgkHnOZHUad9MCMwAD2fyaoJEU8GKo/ReQE6U/EU7JY=;
	b=UWtukBPv6SmHLvMK8h1wIxNoj1JbERwMyvKsvkvV56vaYx27sxJMgZlI9oOxm1He
	yKAMNY0j9QDktNi3N8+buGm4Zv3aaOFnrTfpI9XOAiYTv+/DVGkmE3TJzwduCuUACSI
	vx/YIsco/jiU9288BGXWEFaYWT7tU6qt6rwgLdsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648403098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QgkHnOZHUad9MCMwAD2fyaoJEU8GKo/ReQE6U/EU7JY=;
	b=OhUW0sIDtWMa1BmV/w8BYjj//rWr+uHCDtmxDPUMO2o2l1GLQpKtUMLcw/N0Br09
	Q0wLcP1avKlyjxZj6N5Zm6LQvPuBpp7+9HdOKlDRrlY7ycr0cVqiPJKD5Ydlr7dW4d4
	T+Rtv8u2pP8YeJG/do400nBOPFJx4BgBal9rAg70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc7b2a97-40648136-c771-4f0c-99c5-33b8b0043865-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de104edb56ac90c875d9039e4059113367331ff723f7f97b51bdf361fa71db54
Date: Sun, 27 Mar 2022 17:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648403098
