Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7500A7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645783884;
	h=To:Subject:From:Message-Id:Date;
	bh=13iO2ahF25lpjPkm6UwrH7vHdK02iTtgKvGMd5iuo0w=;
	b=c15feOVhIF90EeGa006qnog+a/0FE1F08Gi67DrFUGJRWo4H6plKlpUDqNh5Z/ZS
	dVPMnGP9/jY+AD87wGa9yChSZr8DVV1CDaAYqQ7RDF6UAX4VirZfzPCXtfqDOOdBxBO
	SkdrWR767MoIjjnRgHU35IceXy9jANgBAZUw2w7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645783884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13iO2ahF25lpjPkm6UwrH7vHdK02iTtgKvGMd5iuo0w=;
	b=VFSISfC9kJYGvKx2qMR5tYkXlE+QxHaYb1qdWjeEJhw0FOKa4aTqv7pB9OGwuNhs
	2JzKxbXmmqlFgN+HfN+NdHI5biblNgiU3wvvdV8pRB63eyE/gUnDrPojz/Xxhdm6tGb
	uoaz16ZS9+VYdDj46qmKd3ISTb5k8P8q0WKPwi1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f305d240e-20928574-0051-47d4-a780-b72377d64842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a1dacaa168a4d45464c7c7f7fdedd22810650aadc97bed5ed4dbce707119091
Date: Fri, 25 Feb 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645783884
