Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F03F46A9
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 07:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651302838;
	h=To:Subject:From:Message-Id:Date;
	bh=DVqXJ1789K95PHHxrODweeI+bKs5qPfC/+O0I9irfjs=;
	b=jCtjEdHxYY4hAsDG+k37WOtgICjd5l7WKM37lEfUxIlNpOIDWnd+PNF9yoW4l/V6
	rME90sxVr4l5YYe+dt9UQCCzGJMbqSvVM9GQ6Ja6JjN1gcZqNU9do/nd1Sw8EbvMa4/
	XWsDOuo49kbK4Z7NQQIo2yxkaidzzB97PD6w9Ocw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651302838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVqXJ1789K95PHHxrODweeI+bKs5qPfC/+O0I9irfjs=;
	b=gmWNFFPdliyzQdHRdOvGYI13kto/aQtztkw1qRsWIuHaIups/sM02CdsUvwcF/od
	DZfqxgcB9txeBOh6kHWxbR3g8XHo8CcXd/uI3o8+uWwE5eASfb4Ikr0Rlq1L5Zp5Qqd
	OEKwFOZ7Y88xOI/rZ8ihNcWeaoSV79FVGpdRDXGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807951b00e-78c0824d-dd59-44e9-a34f-e4e383c67efd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 884d3b6eaf36af5d5e29aee2d2454dd3f59ce44fb245bb56216ef9c078375cba
Date: Sat, 30 Apr 2022 07:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651302838
