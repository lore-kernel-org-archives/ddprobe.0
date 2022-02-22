Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998D1366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645499485;
	h=To:Subject:From:Message-Id:Date;
	bh=TVcDFIrigmVDFKeWTb4H9wHgMlBDb9ty0XLRINQJZp4=;
	b=PdNnlx93M3qQRzdYY1KUgvrXGo18imcqGqjSOKV15ZsOYofyU+WD9g9ZR6L9Wfm0
	t4JTt8IMMLeZRvMxsH4i8NPRMFZBH5nJ6hH7tnYN09s9Ul/ydKS6YX6rLuauYRbFyhP
	fclw0IHt7Fr9w5fbkTPkPIzf65CqOnHLJu055z2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645499485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TVcDFIrigmVDFKeWTb4H9wHgMlBDb9ty0XLRINQJZp4=;
	b=JtKR9QwC1LoRMmm9NBHvmQJ74NNpEoBOYjwqLHpVi2Pq1BhDbwF/nkN1IgCcdB4r
	dJMII2uxgGDnFFkQjkt3W6OvMsIdr21ckdchAYSaIJ6IegtT7Z+r+QrAW734Ra5K76B
	Lo8X96cK0QuyJz0vZMDnR0V5UvE4+GXx04CbEn44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f698a8d-8c9e1155-27b7-4dfa-a08d-e73dbd8af233-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf21d5fcef5d795d70bd74595b4d450568f7b593ba0471be24d13b734863e7aa
Date: Tue, 22 Feb 2022 03:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645499484
