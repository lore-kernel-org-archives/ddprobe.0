Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AED10E6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 20:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649622718;
	h=To:Subject:From:Message-Id:Date;
	bh=Esf8aUuibkJ+llVDBhtYQYSg+IjlCN6mDPfHOlcgFlQ=;
	b=igvFFnLkCueodocm4DXZPpu9Ru5x8zo5ngKmbVoXXkCpP6fv+RqrZA9UlFCRVFNx
	/sDXu1UsfjOGo6CPuDRrgLNjLkSKNgmXAgLYRwhQ5PRoIpcLb1ruPs7qCzSFuF6NVxF
	QrD2489yy1GOSJocujxxyWjqHtDa951KKDoNwudI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649622718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Esf8aUuibkJ+llVDBhtYQYSg+IjlCN6mDPfHOlcgFlQ=;
	b=ay8BSTENX1tHSQ/EVSnpVKpqBMlMnamFo+ZomSkssQ1380juv/2hMLrhdPqu9JD5
	IbWkbx/sTl4FoC+fojf+dlgN+xIxW6eIffT/8jDtvaIGTy6pI34i87jdtYq0zAcxFX9
	tjLxCvoWLYHHK3p0QttStM7ZRuBtSMIGCardM/qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180152d1734-65520f79-c348-46e8-952f-de0f795525e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 085b7f1dea8342265e35e355e24f551635291bf9138941a4a594a243e590ea62
Date: Sun, 10 Apr 2022 20:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649622718
