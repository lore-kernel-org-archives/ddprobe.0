Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92671290D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645024884;
	h=To:Subject:From:Message-Id:Date;
	bh=LqIGhWcp6WFpSY9W+gzh9tQRg7i/AuTLZj2b6H+vLEY=;
	b=lAACYOcaBV7frGwrXjOM3VWSchfIauPs9P5cYNabjN9H0oUgxOW0kOjQ4ufWu5PN
	KEaFtzaVr6fmOhL3i3CVMHe40ADSbY1aLI3L2ZrzTgZw6asV5knB0y815gqPZx9bAtR
	2OXT9ju82Xp7ERrlxNbzR2Q1hCtn+C2V87KMhBCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645024884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqIGhWcp6WFpSY9W+gzh9tQRg7i/AuTLZj2b6H+vLEY=;
	b=UN+8kBrghxXXyfVuqMFYA519mBf/p6ICTJK+dIJ++mpUatoaVQ4pqA2skAzpcFuK
	Hm2IO6jTrmh24+LJZrlwD6c5ul7jHR26UrWcqIERP4rJMjo0dqeU2TTrusCo4I2c3rj
	xohr3tqnRzj3I++x0sc3yB5/6R06eRGRxUy+BvCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f031fb829-ac52e6c6-dd13-400d-8af2-d3e199698b0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e227da2050cd388a6c36f237d521aabdf8f180b7dc9f50d5fcff6a673327acb9
Date: Wed, 16 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645024884
