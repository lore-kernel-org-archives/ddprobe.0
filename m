Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ED22F39
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 11:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654686959;
	h=To:Subject:From:Message-Id:Date;
	bh=7Znd8Y8lXR4cw1qhzCzCYh28slHDmVg4vsN7oDKFci0=;
	b=cx6kedPtqQtFEA22CsYCp6vhMJ4y8S1rP8XOCyzaqzgKuX3iS4nzaRomqY8aqf8y
	bEiYGOCFsmW3noYmsu+k4RYO7LC8KdAl8yVwTu2phB6dFOl4kMufcJpa3jpQd7wkheH
	Ivkz/xa86hX1KaLDk5MFrNDZ7fVGCbkGArcwg2aU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654686959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Znd8Y8lXR4cw1qhzCzCYh28slHDmVg4vsN7oDKFci0=;
	b=eXmU/gIn3g+0X2z8d560miUBnANRa1koXwr/X6xFSIb12gak/+YE9lvf4FGqf5Jp
	O7Q3I9LA2xv36v/PLVu77Q4876U5zS5xLrYiWdEM5coN+kgy5i8jNkGD88OPVM0GSJX
	LgF1U3Vrcgc+ZEX8BUo14PawBiB61usddLMwN6TA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143074697-103cd955-1f81-44e9-ab03-31f1f6b9d5d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 989b93938b088512348024b29002fbffe888efe840c7c94cba27ddee1e28ae7a
Date: Wed, 8 Jun 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654686959
