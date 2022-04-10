Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18782137A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 17:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649610298;
	h=To:Subject:From:Message-Id:Date;
	bh=U6QrZn7027nR3axMXX1vS6MQblAFsrL3gougfnZulIE=;
	b=d+hTwqEdYUMSWPGrMHJ+QG/UH5L/HGvC9FAvF81j+oli1T06/mJywDAT6FXFjV44
	B6eNQ/LfGq+Xrvli7gvCgR2VRx01FJ71Qjp0FSTFNbmoyjTPLDQyd4Xv3WflYeeoGlC
	z/lU0oHv9+DY5CQGys0Jp+F4c9saGbJ3jvF/cZM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649610298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6QrZn7027nR3axMXX1vS6MQblAFsrL3gougfnZulIE=;
	b=SyLbRv3D3lX3GX+PbMo9EVftzs5LYV7xzv+tR8o2yagBrvFSmvITx7IZeFoSCfF6
	4Xy6OLQDfev3yjk0OEcSP1E+EFDzfwXCYSZQPbkaRuG6b66+2Ru+whs+wwojmWtuELS
	p2ac6vrFJ07WjTN5EMNyj+drmsh1fypcG6wOUimM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180146f93a3-41e60fa1-2a9f-4557-a229-97e0aac7ffdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b965b95c5f217a7660741d3b996b85c0c7ddd7dbdb71d387613638f518d4812
Date: Sun, 10 Apr 2022 17:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649610298
