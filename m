Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8639C5EDC
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645390585;
	h=To:Subject:From:Message-Id:Date;
	bh=fNs/zoaf0wUoIOFA8mmVJUcW7B49GLq7SheaX7DGDmM=;
	b=Dshzi1pxEU8NB++NpyEvqKP1kIjpmnn3/TLLAZkxFIwpFDJ9PtkMss2QcCU6xOHP
	Fs8lS0DO7QVLIolFrdt5YTCcUSl/ZQW5gAIFkTwZF35ZBujjD+yRMVvWz19UKfs4BVI
	thR63jzzs5npzwpEBiapop7fYyAt8y3ZNqUeTPTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645390585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fNs/zoaf0wUoIOFA8mmVJUcW7B49GLq7SheaX7DGDmM=;
	b=PuPDMoFlvPGxb3kcDv3E7x6av3ugs9rZVcpz7xGDxUcWGMW/jmuOo+DguBCQ0QX6
	TAzuA62NKO48xRP3BcqHFxNfut+EAmQ9je1oG7I8uS4ZgqjOmk8R24ZuP+eOROqM8Z2
	ZOl8R9of4NDTRnB/DLhKItNZntgwmZE3VKBDnctg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18ebdbd7-e24aeb04-ed58-460b-a2a3-747d3bd6b02b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b77dd1d05dfb2d78f8e13af95593ff179a4c8a4594493f417c087415fb9e42b
Date: Sun, 20 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645390584
