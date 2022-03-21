Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736EC6457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647900384;
	h=To:Subject:From:Message-Id:Date;
	bh=v4Z5oZLuL5lQ8yvXejbphFFQWKoL5HyqTcTwIXTCmK8=;
	b=LhX+I/avq68zU9D8c/VGpnqPVfdkcadAqlm739SOFON4hTE6bWEzXMQ2Nocz9Kz/
	LuEaBhy1B17nIQWCgA7c6ac79KREXfwfs6OAOYkozKAewfGGoP3/xtoVqFC8uuHstmm
	1GQoLplsTHkvt/yfWPODiDbsbdWRfc/vaGVh6oqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647900384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v4Z5oZLuL5lQ8yvXejbphFFQWKoL5HyqTcTwIXTCmK8=;
	b=O2temAn+UAuyPphCtU0iWCLrkU9ST3iHFS+aWYwAY/3ycfqGx9Cxtrmy4u3dbe7L
	f8jNWvml40mNNevCqKH1ghl8j7rE2FvkMOy/myEOdXkbDMRBFvOrpxPzzbEc0tcp/lN
	kMbWNhCuPUMzcvWFN7lUuSn6iL+fKwCd8oIBIzlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae845dec-406e753a-5316-499e-9be4-95254c94783e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f9e7c34db661f13de55dc09b3423f19a7b195659b93b31f675b1df79ccdfc3d
Date: Mon, 21 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647900384
