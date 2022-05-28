Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149E523D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 11:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653738419;
	h=To:Subject:From:Message-Id:Date;
	bh=4aXJD6u9vN68xCwlBrPtMfzlWuQ0akZL1wruZo5weGM=;
	b=dkwLBKrfa2wW8KsDhlHE+3DjO+HAZou08Xr6aAhPalijaNAcUxLfFvtAtLqI0Ezn
	yObvm3A4YNHcWD55xagPyfkdPxa+nKQ5cISiqi1vUW4x1DSpfFMUeOOjYpf3HRiJ5sF
	mDS0ns1KFt33NA/oMhBYWmgMEWydVR9AfY1Gd7mQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653738419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aXJD6u9vN68xCwlBrPtMfzlWuQ0akZL1wruZo5weGM=;
	b=O4usVl1WY5vOXFlcomo0QLe7IH/Uh6RJc2kkwwIXq7MTJXWXZy9CnOAJ7LVp83bd
	KO5lzCCmUO8069HBp5RO/q9NUgnueWMvOn49CKQr/5NJ728WMnJpgA9sqJPXGQ9ejyE
	A1XGho948nJXbrHraUzROQ75ScEysxUojRjzHkNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a7db47d-2af98d2d-6378-4a77-b5d4-983c8320e9ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da599bbe9a383e3be291740f8bc046d3b205836b5154b12eb356de86b58ab722
Date: Sat, 28 May 2022 11:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653738419
