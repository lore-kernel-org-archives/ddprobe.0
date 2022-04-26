Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF91C363
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650962398;
	h=To:Subject:From:Message-Id:Date;
	bh=cNOw0IeYtTBWH7hxqqelJSzfFZ3YJvVNfAk/V4MuSaY=;
	b=hFKFOvY1/7kJxVE0UPTQ3BrrH6aTFxwTHe8le9zzNCojTh/NPLHSpKDYeMmK4B1t
	K9punzmKKTWBr/rhkPXdINIPEz6Jqiwgcbc2Lh48BxdgwCee3hnmHyp1Jq6dLtQ/DWo
	N+2NPJ+GkKyXsXCBgT5YZCVJ33sv1/LwA5WuXagQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650962398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNOw0IeYtTBWH7hxqqelJSzfFZ3YJvVNfAk/V4MuSaY=;
	b=PadUauMoziefXpY8jaQqusv6G/PcH5khTw0y/dsqObQRPDpbaBOSi6kwttpDx2LK
	zYAggDEgYg3VebzSLg9BwBA0DIxFa9wSPGmJ374GSZlpmYB00Y1ImdC0kkLsTaJMdj6
	z3yRfekfHOKRTus3+cNGLK+yzUZMDfuGO9nFYFcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806506fc08-c0c156f4-9704-45a9-82ba-f5582dee9054-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 095a2dcb5a8ecba1bdf6aa512f7a045eac06337658d7620bd0df3b9e055b8d2b
Date: Tue, 26 Apr 2022 08:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650962398
