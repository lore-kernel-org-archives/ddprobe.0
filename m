Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE77C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645941685;
	h=To:Subject:From:Message-Id:Date;
	bh=cHWZmROvbgL8BvuSL+moijYIMAvwRVtEaovsB9u3CaQ=;
	b=mYTORbz/rvH5DvMfC7krXRuLH8xLapwwbR8Rwmi72o2vqFxx9hnN3WDu+lSG66LQ
	wAO2rPI2Ys0lMNN7jrXmhMx8385bk+6jbSASVAbL/qDrpYu9QGkt5ki8rv2YZUosstL
	ZMLYsAVEi5Wv3QKodiCHYxpKwTf5fNMJpUkvXRZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645941685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHWZmROvbgL8BvuSL+moijYIMAvwRVtEaovsB9u3CaQ=;
	b=O5z7gzBCwjHxlvmq7wU20jX420guGXB84+V99oTjkT3HFrh/lgwKK8HHqjpVbmUN
	Lt0/WZFBROsHd/12Hby/Rx/wr0ZS67H1QmS+qkhBq+DWW4lMzj5GNJhCkPLzB4uIjPG
	fNFz2zAMxurvyl3fEQgjuFzhuHlVDrye17dWvkAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39c4fa55-0d64730f-ecfe-4d27-ad07-8d5bf6589889-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c24f34ad6cd01e09fcd1b55de46aec52a69e2bf6ff50ce519dc92da54bea21a
Date: Sun, 27 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645941684
