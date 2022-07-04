Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8A015A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656920212;
	h=To:Subject:From:Message-Id:Date;
	bh=rIvL955M1ErAoRxC+M9ajIWv8hToyDnOwRnal0KvhCQ=;
	b=NPvmbDAQogiYSdTMJyCyP5+V2iMyPF12zyppr0Sca7FyvDyQwdRrIjiaSdmcqRpz
	MW2QlHAhQq3QiwKfsG0Uo2Gl9qCabbhOaiGOjWske+LWOFBafMUlg4N72C6bImwOtXs
	OjpBanIsi2OcmGXwvgFYJzzrIbtqB9xHl5Ey6QU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656920212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rIvL955M1ErAoRxC+M9ajIWv8hToyDnOwRnal0KvhCQ=;
	b=CQwgccz1SIxKX/b4ZvNSyygi8toKAAZAnbLk5mHzvVPcejIU0lj3dfHMiviOjnC/
	iK9eHGs60FAgSRo5yiJsa7ITaIm42SUFVA64znicmTLB4jzebWm7WitWtz/YArEM1U/
	MURNKPbsHBHxYwe6b/ZNTEDcaSouppue3a73S3c4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8240352-9b736153-993b-4970-8818-9004031095c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7302994dc7d4a0dc68afe37101b3c688b2d3d5e318f1e62a23578c56dda1b0d
Date: Mon, 4 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656920212
