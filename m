Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5333C2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646516484;
	h=To:Subject:From:Message-Id:Date;
	bh=Ob3RsMoYMEK5f220m60egEWSPnxEttga2tnkVYe91Pw=;
	b=DSm0ChjqhyaXgLhdn7nPGsoKtXXbGbHgWB1Lyd135p3cAZMk+PY3nOxx4seFUSa0
	WVGMfM/4LZHw1ui28rLqlex2QzTv9BiymwwWd4KJaxuy6/CrijRTyHPbndfRG0vlM6a
	PhnEletgaEixqO43cIzmoliQYQyXGFq5RVdZ0ORA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646516484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ob3RsMoYMEK5f220m60egEWSPnxEttga2tnkVYe91Pw=;
	b=BzU5maWwKAQJpqQSXyb6B8Q0sIRlVawmg3b5RsrZNL90q/webao7TfxiKTju1bJL
	BprGZnsQ3v8m9UJS+mj3SxvcjYOgMdNYUmZ4G26UhI16N0eZtgEUAGbfWU5yzuTa590
	rQuXNuO3N1KE2eXlAitZWBMtdz4n/YXHonyaiPZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c07ba89-cda9ec38-024d-4e6a-8897-ec15ff9313b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed07cf5e18c110f841dd66e45fc7a7627e44cb1727bfdc5a13b2f55715d2a7c0
Date: Sat, 5 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646516484
