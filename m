Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763202F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646701885;
	h=To:Subject:From:Message-Id:Date;
	bh=F1BhJeaKCaBZmAAT9eY4VtILAYd7yBxpQkRGNIeiBD4=;
	b=ZH5vWOWIQpNSnuSTdDTULD5PEJPq+vnkU+35urzEUXTbBS5IFAFtWSapKnAu4Ry6
	IYl1scAh9vN8AfMxvPd9mBA5mIE8ft276coz+TnmLG5KB6b+t0HpwLP86pWpbBGcOft
	BtvyGUYDaeLR7pQz1eX7Bw87V+yTJsyqABBh7smo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646701885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F1BhJeaKCaBZmAAT9eY4VtILAYd7yBxpQkRGNIeiBD4=;
	b=PEuYz4JbUXJVzXAWNGfcET/sqhdMzgFnZVo4dpI2Gx/VxkQ62etOsoflUnKNlKnc
	1j0iyKgYXgt0HTgfgZDdr2Er9OQpUN5oCI5lJPtw8jXUsQ+QX6jg/DPaUA4Gzqw1WdR
	/cG1bfLY5kU+jypvOOaXw1KaZUHtHTUYv4vdg1+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6714b5f5-62578118-5bae-4660-bdc0-2a7e05fdb9fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f744e24a067f76d1f5b43354eacd1d8a978f5abdd7388c827df9eb5dffad0698
Date: Tue, 8 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646701884
