Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E6A38E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646646684;
	h=To:Subject:From:Message-Id:Date;
	bh=4zSCSISlrZO1kZut6pBIdNT/cQ+huZMBL2p+SFpeWpQ=;
	b=PMhoM1dg/DXxC6tsuRnAsasSfLYcyBlFbsHj30I7Lf0huEJ1W2CPhkEzUwopNomW
	fooROPAngZYKPKRnV9qSiX7JaROIHFY6TcF9EWcnEA9iPgNghMxDr+/OE4irUK0FwZS
	XCHb7XPh0bpxKG9WWvSfXrM179NdQft7pBrw5SA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646646684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4zSCSISlrZO1kZut6pBIdNT/cQ+huZMBL2p+SFpeWpQ=;
	b=SiwQ98m2LK+YjiHnQ1mXu20qRbOek91yRXMB3p/nbCSzXd9MtM5CbkQRQUu6uQej
	RlXku1rqeqxmtxKx7ZGO+kfE8ViJJo5xGhHFP3Jg78ytXVy/iUVeDmFTAB76/rsS8XP
	PwPz63XD+bscBjmLLdQOaBAaKGIF/hQVsU9xHg+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63ca6c7f-32b7bcce-364d-4b43-874d-74eecca07012-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ce092b856488411fe666f45f96d0fb06aec1e8a393b56ecdde94cd2a3bac9ee
Date: Mon, 7 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646646684
