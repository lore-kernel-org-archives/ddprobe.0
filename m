Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB81362
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645519884;
	h=To:Subject:From:Message-Id:Date;
	bh=YHUN/6dZetQWabVGp6ohAueh0BDrFfQDHJSWfJlHJaU=;
	b=gX0nFuQppacNXx+FNh2Pypv5pHNouZnTPV56+jtvyj5H008oiQdw7IwRyIglXS+a
	VPRmGl4t1mEoV3HAeLMffZsWr88dAnRJtceDCJzPsMz7AsKTmQeP0Rpa4DLnwyFRHEF
	p6hNPg7rm3eN+IYNDIfoRzX7OM+jdD8VmawrCGvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645519884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YHUN/6dZetQWabVGp6ohAueh0BDrFfQDHJSWfJlHJaU=;
	b=ME78fLxVQJywL/XWnmSuSqkmfIil12DcTArPLagINy8ThmROdUAvBdSoud6AsQ7F
	2wammhyTWKyb5W1IhrXhqPAI2tP/oHVKzBfQ7IweTmM2H7KMpu+3xKaGm3jNGalIzl5
	P0qOz+N5H8SxoHvJbm+IeprwnDAXUPndwHR6uguo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20a0d1cc-6df907e7-6417-49fa-8fa3-6857099585be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d604cf7ee73fb654664d9e696eedb54f40430ac6812d211e9dff9296b82d857c
Date: Tue, 22 Feb 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645519884
