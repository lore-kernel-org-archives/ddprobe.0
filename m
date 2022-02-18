Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22EC4C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645225284;
	h=To:Subject:From:Message-Id:Date;
	bh=PsWQhA/sGufgTwb5gao4+TprGudqM8QWAj/qWH1AaiU=;
	b=hLKqAhhMB2xq2mZtBWLCRnKkf4oDcGQRjmMSr8tfz8jX4QquHjLMlvZaoAJabFTQ
	7AKKaB23IwF+sZpNU/xl7CVDutRkBJ69t4ylyA2EBxXJlWXwV6639KbvWHHo+hoz5La
	7pURtATLvwGgSwKgZACqQFrELVTgcGDmUR9PpQjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645225284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PsWQhA/sGufgTwb5gao4+TprGudqM8QWAj/qWH1AaiU=;
	b=FwgwZPJE6mxK9HSbwK1s490ZAyLYAvYayMG4kxFFBapcV0cKr2OxIopM7fAftWfs
	bRJdSGmGaZyD+0Pe6JVDzGMis1ghUQKty/fflni3CvWBmQBvs8vH7eeQU8e+75Ggsjf
	dhmMbOtoFoBne8t2Vz2Uf2BCyi6wV1LTpzOeYgUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f1194e6-b4d108c5-b2c8-45c0-8d19-536e2cb52ed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d96049f11b4ec65f6ae8ccc83fb9316108d1570a1d10c23a255fea637f0fed5
Date: Fri, 18 Feb 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645225284
