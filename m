Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20FB7A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646725585;
	h=To:Subject:From:Message-Id:Date;
	bh=GyIMnkgorrp7t2mtiDMi61EldKBkx94mbWf4sEOSPB4=;
	b=VBQ/Mkt1qXmAB9DMs7ArzTSX5qKOZP6q+J6RhZa5nxSpzgqEOZxkdezvtD5ys6fV
	La4ufZA9GQF82m94TCPPW4DJEiZGfJZtdlobYOCJWMY0gibgRxa/rD1ckVdZAAYrHbT
	quGjnG4GyFTt8iTzbqkQi0U0KpDWAMMKQZ4lr+FM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646725585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyIMnkgorrp7t2mtiDMi61EldKBkx94mbWf4sEOSPB4=;
	b=ZUsljvhd1i6io0MGdlkT1I3HF+fPFB3fCJ++NwNl4sHHiATcWXBS1sM6187XS6+5
	4iMBuznaa+mHm0PJw3akO9/HgM1eC/x90JKostfuCBPZy6EsTnaoHr0sZl+fWFds9gZ
	U+tmuNElErqVNEBEaqy8S2ck1Bh2mBK0ZZgPF8gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f687e575c-9673321a-dae9-473f-a8d7-01c0d25e80a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7a0258acebf18d0be4508bc2eb1cf193ff07e8faefae27349b65c2aaca88ee6
Date: Tue, 8 Mar 2022 07:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646725584
