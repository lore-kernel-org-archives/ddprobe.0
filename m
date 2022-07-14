Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522A56035
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657842412;
	h=To:Subject:From:Message-Id:Date;
	bh=daaXnIsFadZ7jMFvdLINSYVWmcYGt+63xboGDZZAP4U=;
	b=bRrTOGENsgy1pj8Q2LiD+4FEPml+xZc3NV5D6ssmnIp5itAlZ3CX7/UeDspuo3kF
	yIiFqWrHUs4IjAvm9yR+/XguavxSjZgOX3NHo6BVQ9en731C27hNZrcjAtk49bRvBki
	+K2DdFkdUl3GkS/uAGGRp70GR/LYRYvnMONAuKcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657842412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=daaXnIsFadZ7jMFvdLINSYVWmcYGt+63xboGDZZAP4U=;
	b=Xjgz1QEAfwPIEx9KNa3LiJSswNgyOeUTJ/Bba7ng4zekH7AQ6RxYBlufAry+/e4g
	mFRmZC1n+wuGNdW7z8F7dD5XT947/C7tDxsUdWGNFOWFT9lB/T9M5Ms1wekb8Oggo7t
	dp0RiQxiy/5g+2ZI9uMgQLvklMFqRuDsPNQ5UC90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff1bab4f-7e37998f-2e02-4bff-a419-8ec4dd1f4016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b43b4767918e2debb5aab740ff56492a3dec83ec096fa91e08ffd75aa555edfc
Date: Thu, 14 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657842412
