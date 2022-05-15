Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F5F627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 01:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652578019;
	h=To:Subject:From:Message-Id:Date;
	bh=k4/wxQLKWySsLwgEBHllt9AXgfgW6X5XMihCx+RIhgw=;
	b=gvucVi37Gazh/oQxuzK67r9+HdPLq3TyV80bYTZUwUQRqQ00LlJb20zheNakY3ZP
	XB9RMENPVFUp6AJa2zpOx0Ds+KVm0c/dU6KxtpNYF/JLtHSU1xpt3djdVO+R/n5GgSe
	Mb8RZ0EyuBksYkf2J4X4C0+ugDphPae/mRxbR03w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652578019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k4/wxQLKWySsLwgEBHllt9AXgfgW6X5XMihCx+RIhgw=;
	b=aGRIIrvq+o5E2LV2Dwsd4sAumKbAtLSzASnjLSab9wwtC17hsBa5DKGkyDUtlaMY
	J2uJjx/T4Bwadp4H2XrB9WEnyxCQH1wb8v36nMAZc5+rGNE1TgDmY4zoVv+YhtPu6dQ
	gMKDq6qIXGbXdHUIiRUAeWJyippvpyFcJ6pGTUj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c553682a-0ab52fde-af11-4b0f-b71e-a0f73a567f9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fcb1f281f371e0f7a974dc1569488237c63c40ba0f19e4aae9741f32a935ad9
Date: Sun, 15 May 2022 01:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652578019
