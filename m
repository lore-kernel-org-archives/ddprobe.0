Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDCA1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656011812;
	h=To:Subject:From:Message-Id:Date;
	bh=AbcSm7zE98hMj6qDTGgqt6DB0mJ3JD8P2UUTaN6IuOI=;
	b=gVUzymIqRc1AXlivkKMjE+uBFyrrgE9tE63qPMlo+rsHcLRaIJg2Fm6f9iL0fj6U
	4MGvqPqz+fdVyKER0lXnayMJQaiR1tteikKgPPtCpkPqyfLP21VdKQTTk61u8ofxNYn
	PjIvC5ovXPhNi2nyrgW2OPBp+0JRrEpx8Y/4yljI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656011812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AbcSm7zE98hMj6qDTGgqt6DB0mJ3JD8P2UUTaN6IuOI=;
	b=NAHyla37Ql+mfjyyE9fi0+hdsmJUdL/sqfzx1zuDw0tpzh8BY66pX6bJtnHpXOJf
	VgNEapTCtgDQbhqZ3sFvU4by2YHXuWR4eCLVmzy1VIRTZEA9PyE6QwYy1YiQ7WITp7D
	R4T9N0Dugj0oJFmFD6d9TXPcW/IFo5mnr8011P1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191feee02-0f244c15-222e-423b-af7d-a78b94030421-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4690a24ce964cef4b2fddd4c00a373cf2017cf64e1f2bc9076b5873256e8141
Date: Thu, 23 Jun 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656011812
