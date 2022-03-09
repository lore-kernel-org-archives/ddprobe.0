Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1FE6450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646795185;
	h=To:Subject:From:Message-Id:Date;
	bh=FdMBOb3tn+NO6vSZTIrSGI/7BaD/+bDSZKTALpuI/N0=;
	b=ayGtZ8DXcUE7ft4wwf8InsNZNgO/Fp+KXbOFncB8+iOlu80KnaU9Kdy5TN2xgZdF
	Yjt0JLuS8/aIF6g1ELmjVtYiCMzx4+YwWwImxczvllPkQ7rB4RlLpWjtdJpokKISRS2
	wrYVmn3eSqBwbGlL6FyxLVxE/rhyOlcVfccbOSjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646795185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FdMBOb3tn+NO6vSZTIrSGI/7BaD/+bDSZKTALpuI/N0=;
	b=E7agETfQPafkF4Ljc8lngQJlNPvCIzBe86t4LG3+o1OdKBCFikGxF+0b/lVa1LLf
	b/K9xF+RxNChVtEJa/a7/vOml1cad/nvCr36cPPUkuvK7bHueykRbGLNqGGts4RsWLE
	8A0iqq5Bb9Jf55Bx+sVXtIlW/sekmpdGUtUa/Az8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ca45ada-9ed20145-8542-4972-b888-2f2b343eaf62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fa436226e0610c3cc3a7d898c8e6f0b6cb411217a6a56571d2dfcd12e811190
Date: Wed, 9 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646795184
