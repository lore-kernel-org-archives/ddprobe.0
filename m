Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8576C7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645431684;
	h=To:Subject:From:Message-Id:Date;
	bh=rTFaa2ExWX/CMYnrrfIkBtmg+nxUxLd60CZK08NWRCQ=;
	b=R9yWoJshCBButOVv7Fqdw+PklpJEmeV0yqe+6Bkz2+HMSTmK2DlqNNuLXzZXkAvr
	JGv40/R0mDWM/XmPiMuPbb8YLzJdXQKKFgs1HjqA9mHpzDyCjPeNeeptZdMmtAXimRR
	naH6jCUoUM+FPPFU1ulATeAst3pAxgDhpAxYvASc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645431684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rTFaa2ExWX/CMYnrrfIkBtmg+nxUxLd60CZK08NWRCQ=;
	b=X2d5SoBICSEcIl15cbNiO435G21PO9zXHfZF/et700mYSF+c+Q5r1HRKgyDzqvwo
	4xkxHy/w5aRMXfrvEMxd0+JOVCgeQqC/kKD2TKbuA2U2jh/W1LR4OkMqtsTIQ2C586c
	30OpF01Na6vILQq6PPvQNLEg+mvW30b3O/9AijyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b5efe8c-17ca65c0-0501-4fba-8e1c-55a7d594d832-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6451809be01952e1f51f743f18403d22b3774a8db240bbcd732eb722357303e
Date: Mon, 21 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645431684
