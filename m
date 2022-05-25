Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF3DA23
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653467879;
	h=To:Subject:From:Message-Id:Date;
	bh=jTKL9T+44qMN9iUnaINwGOoNyvnqD5kgMzSbGIbSpjA=;
	b=Bmm06EZIOpSYtIG7PC96+yY/UpwZnsMHJtQiQ25tC4HrD/HCJ99TV7lLj2wYlrZF
	6KG4+6wvYj1wyOVvyHFK/TSRuEzmnWd6B0vI6qcuusROyKhAmTfK0m8BN0te17QLbLB
	jvGL02V7UaAEERr0oKaz2mLRWY1z5TC3ZhkxUFc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653467879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jTKL9T+44qMN9iUnaINwGOoNyvnqD5kgMzSbGIbSpjA=;
	b=JV9Df/7NudMymoNctVS5Wf9tCdr8AeDiD89QnCzw5kChwQy0XmdwvPnzrIJ1Miz0
	KrIEql1Z3wUzRem10I6ABhMp1XoURxJjuc9B8jVzDtMqYOD4oqb29sNhyP6Xj3AJ+Kf
	yerI45zPfoUuDinCePBoL/jJ2pO9QodP0h799deg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa5d9747-b8ffd8f1-aa41-4fbf-a5c0-26918ff2e630-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f3652405fe3581fe12f6abd8e2efeabb2f5c963f03953315a0df2728e0d4bc5
Date: Wed, 25 May 2022 08:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653467879
