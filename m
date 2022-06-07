Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7DC7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 01:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654566180;
	h=To:Subject:From:Message-Id:Date;
	bh=i26yb+YWWe+/1Mvm/bLn3/wDijlIjPa90Y9LJMcDJ6M=;
	b=eS8oajUvc1SVkNRfmC6MVId07Itvpd0WA2muHAHA6L8Lf3VGHh2LTwEOfC8GE+pM
	cG+CgVAtW9IrZf7blDMM+vUfuA4+8TpfxxCB3kUJcK3hoNzLWhE3bZ+BYrlPXc/jAsZ
	pkui+mS+yDA+La1gPqN1LVO98CmBjhpJryxdk2xo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654566180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i26yb+YWWe+/1Mvm/bLn3/wDijlIjPa90Y9LJMcDJ6M=;
	b=GMpR9paLA5P94rlxFBDmX5GL6E+0hdrtvnUUyyF9yHM4Sm8slu1yw7bLDVEyobRI
	WNOBimP0VrNfOZmUUKYmgV8GSOMVGajkiIxYyaJHvgj7A9nmURE9OgfP+SCAlgNaFkY
	dshW4+zr1X/vCWx1hd0qhkdYLLTCXWk+UIBTEtxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813bd451f9-f6f48964-042d-4852-bd12-dc1f2ced522c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55386d34107c41c05cb5c8a2b33ba7a5376edecdfd2bb7eccc7f6ec016a3df26
Date: Tue, 7 Jun 2022 01:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654566179
