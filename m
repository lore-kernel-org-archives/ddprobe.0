Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE63833E2
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645473085;
	h=To:Subject:From:Message-Id:Date;
	bh=DMOeZ0jTaYNkMN9SxN2balE790PVfjgIoXxMgIU/QWQ=;
	b=YkPOghVHQZg/NhSma2y4QqV38JWHTToSHOvkqxc5EhSSkwIWMsZgIJ8ylSEpTVLf
	931I8YfS9Lzo1vbV7H7tNsKae62PFqqLlRoXAA+dxxok71vp9rdHIdRMhEvo0l4G/Qz
	UJb/hbh7aMbz19TBobxL7bVre6sf12naib58+Xr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645473085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DMOeZ0jTaYNkMN9SxN2balE790PVfjgIoXxMgIU/QWQ=;
	b=EY4Tloe+pguGI63KAc/xfpkELPrAZ/oiLulEpGEs0HxwT7E40o6aq/7J79Hjyzv1
	K1OW+t+6sSMFtaKExx56TWu3RuV7+qNgvd04bzhGvF7xaFCtC9BA1LcSIMvR6UqdRhW
	qmcPmhOkMW9ZJ1jlAQacld1FRqdMHrmLzgzamkMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1dd6b56c-81ce7855-fd79-468b-97ae-be1261e56ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7d2b8c5ce2bfd04cc295568f2f8e0916cc809390db0856fdd918a0b019fbc73
Date: Mon, 21 Feb 2022 19:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645473084
