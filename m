Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174A9367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656397012;
	h=To:Subject:From:Message-Id:Date;
	bh=Sn99KHrqtmy5M5Ph8F2VK9v8001ZZp8u04e/kGXrSS8=;
	b=hET4OIixO/yFBIIWH3xBMRgqcDnUTexqefxQ4zSa0w8VQVItFTXXIU+POxNkUlV2
	kLyZMygB9c6Vx7ReWBYXQLi45TxbY/53ij1ed91dUOBA5jaVwTW807RBKlbz/ENO5oo
	CIFq0GV/bjoBKl26DyTyxVA5QrXk56X0etw64L9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656397012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sn99KHrqtmy5M5Ph8F2VK9v8001ZZp8u04e/kGXrSS8=;
	b=K4TKQr5Auy/3LEcSN8GZEAyEmL2DXR9mhltgOZE9VHCVDujFchBnsz8DuhXfRS5Z
	Jbrhok2YVDVPn8JKnkPVSi3Ks33l29PjmSfDiDis4XWSSZlBBtIGYBE2I+ZdrFb3I6R
	aUwH6GIj+/t1e/DTO9mqe13kRSZR/sfgEUbews9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8f49d74-a8c31503-c57a-4d1f-b13e-33667c13425c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfc9955535597406d20557edb50310c6d05b8bddc2f3e02f1eb567a362818eeb
Date: Tue, 28 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656397012
