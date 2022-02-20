Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BAB160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645363884;
	h=To:Subject:From:Message-Id:Date;
	bh=M5buHXSVQeUS+zH+d6MBLN/xQVwRUocJPvi2ACQW/cY=;
	b=R8SstekdxCVmUIUoWFQMVMZc2oTfxiCEX5kKF+9MT+jyqA3NSxz7xRSwz2UAY+mY
	uYl14Lao0cqxnG8/tzrc6gI/1/Xqk6FCLPWVG20vGmbWDlF4CZw8pNtGpG6C9pk6gw/
	wgdthCIhLDtqcYiFDt9n+nq/8YCRBirV3UgFs7MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645363884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M5buHXSVQeUS+zH+d6MBLN/xQVwRUocJPvi2ACQW/cY=;
	b=ZU003BOIO4+z6/1YMfacknTJCKVw2CkWhQQMZhRVKNoHtuBfbJXQE7nWujSKBd7t
	6lJKjWfZS17lsyy7IUdcXbDuCoH15W1BLsGbvIuEsH2B/BfWYIbT7/F0+1kZ3CGC22g
	FEP/2NlCanOivbFcftqzQq3zLHLJ/ddxqW6kg2tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f175472c9-1f8be1d8-088b-42ff-b3a8-6bc136bd42d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 715545d294afd3047ed352f6d4d865e7493f5a1281e783739865ee42d2f9492f
Date: Sun, 20 Feb 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645363884
