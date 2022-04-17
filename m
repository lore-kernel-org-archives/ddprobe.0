Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED989367
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 04:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650170098;
	h=To:Subject:From:Message-Id:Date;
	bh=de8Rp1MFyqDibkZNsolo99+0gDpqbitNa8Ra9IKAZyg=;
	b=XuX4hSoCDlQVsD3VJA8jRq8WKq2jZCXxyrbBiTmmJI2JvjquTD0jx+sbKOHQ3hZU
	tlc9YuAD+DN/qoiXh61sAzPYfiDRNI8KBKqAFRvAj0cCIbrdbN7lAmuG3HL//mxPAN9
	HYxURhTV4S9kMGa9xAS4Nq4GFjUpXzwglp7ta9II=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650170098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=de8Rp1MFyqDibkZNsolo99+0gDpqbitNa8Ra9IKAZyg=;
	b=VYR05jS86qPKgTZTk3bGIDJUja3JdiBObp9kvEp93l2v+bSd34lejLPluz7soXYT
	f8te7csGlJM5kES5SsqIHXIHEnQSaOMkZtDCL/lt+UwP9srp/qdppCNXoXp4WguByO4
	Kvl46jsNCRSNQ/v5n145O0xmSzHsHqb9ArnAHmJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035cd7298-ea5bfe1f-1bd1-4506-a1ec-84db86fc27dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e2c1836633f56f3f540eb3e3d3909d11ce0ceac60d5dd022eca276057197c2c
Date: Sun, 17 Apr 2022 04:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650170098
