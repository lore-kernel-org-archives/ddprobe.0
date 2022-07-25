Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5A162D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658741212;
	h=To:Subject:From:Message-Id:Date;
	bh=6FJEHlWiaHeKN30i5zlcXuGK/topg2SfyCGs7BzoVkQ=;
	b=cCfHHi2tZ8Ob6oPVEITp5VXt1cIesfGkBtnqarNXHTi6J+ic6sxMNlEn0L0vE6zc
	2RhRZmXHHFc7gEEVv+mcqEdHDBuzR7zTZEIbmyjzhHFIcZXj3m9z6k+Bzh3uGU1aOuJ
	YRCvExrLmqaHu+29QhdUmEaLOfGjBk4gw2rfeFCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658741212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6FJEHlWiaHeKN30i5zlcXuGK/topg2SfyCGs7BzoVkQ=;
	b=bVU64NvLgDFfqyWm8yc9k/IfUU7N3cIGh+gJSNCtAzAxGGZhErzm6ywtQ+gkCCjT
	xDqQWhQMfS3Bjqud6KiNSjU2L1lseIOjUcFrQpP6fERfZ3A8miSsmdOyh9rRvNufsKp
	EkwgST4mmOpC/ZVAvUbCs6U/5XRstGkRlhRAW/tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234ae4461-5b60d785-a136-470a-95b8-8aba24f71c2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c83ba2484c1651549de751df7a4ce9197be9ea6ad59fcad11028c60a0a616a08
Date: Mon, 25 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658741212
