Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C017320E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650023698;
	h=To:Subject:From:Message-Id:Date;
	bh=G/Z/V1QyjLHWXsonrZqvzs1rd98dClJhTsH1pnZkz3A=;
	b=jI52Czv/mSWDVPvyFqXIFGLpFa/sAmR/qIYUYXxDh5EWZF9YwW+ZljCXBGUDZNIM
	QYiGVCHlzGnBR9iVR7J2XGAEfeUEmR/CzcQOyI+Wrc4w8ph4e1a2IrTFnZDn2bxIUVu
	Xhcopg3BK50WLnVr503fOCO4QgQu2FvVi5mRUc+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650023698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G/Z/V1QyjLHWXsonrZqvzs1rd98dClJhTsH1pnZkz3A=;
	b=SvxuDvkcGbG3KhlcsfMcwB0hMAVxxVzxxdnoRXcav1z1jZac6+ngjIXPJXcGPtzu
	xElToFcAtZP+kxps29g8Q83TSH8R14NXmjVTO+aOfidlGcrQazPuC6XmQmQoKABYoBm
	m1Ojg0XsuonCxIqk+ztg6TrWcz3gcCrBi2UyDz2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d138f70-8e800c75-dd09-4dd6-bf9a-c8c9e5f1b5d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 999fab0b9e9582c9e17eb6af716b1a7ad44a38c47edc5c9775b8d9d8960c5ab5
Date: Fri, 15 Apr 2022 11:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650023698
