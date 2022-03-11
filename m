Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A22C7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646972485;
	h=To:Subject:From:Message-Id:Date;
	bh=0Y0vLzKdkYiQpfXBbz+TJ2t37M/gnc+PRWLgeAA+n/o=;
	b=LzRPUU9hxnoBeRN45L/Ebznmi0hfTDpavpCtMy5zQ2ceLnN4th66eLrWyWsWVFZK
	3RsVmXd6kktCNdEqpEvu6IqhvBsuu9WKhUKumR5sgbRBCVXpoUlvMmLXHyvhLGC7MZ9
	NzcP5MdvZuOj9I17EpkvYWkVUb9vCk1FOnjLFje0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646972485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Y0vLzKdkYiQpfXBbz+TJ2t37M/gnc+PRWLgeAA+n/o=;
	b=kl/ERy3Sy4w4HkVGKvz6sSBbFoqkacI2DerbyveMJ+guTregwY6h/B0F7dteXY2O
	kZBZlGnxyhI+Fy6xtRS2p97/BAVecu4eUQyTGoZdUE8tkUfgtJWnmzOoHvypjIPlVJS
	uaXRAF7xp8I3DUrjYL5rnnhAVOCHP65OMJpY3pLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7735bc89-d8cb9352-857f-4e10-bad3-0b7b1a68d2b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a2058f79751a1b279350069e6a390ed7d937752e04f0eaa6828ce929e7b6d1
Date: Fri, 11 Mar 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646972484
