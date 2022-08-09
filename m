Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ADD5C95
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660030852;
	h=To:Subject:From:Message-Id:Date;
	bh=4v1Pqf67WMCmExwNRsPHuS3y1/Ah6ezQQkLbUCriP7s=;
	b=ac97VSK/mEWI+tWlVn0h1ds2x62uxmIxeemDHEgnYriNCI8Zuf8oOVu8reqB6D+N
	pYoFlFCwu8tFvOtPb5zIcRe3MTe7NP7PCC4LV4lD4yl/bpk9zu5h4TIAtd6zrwRMDIr
	PdxYcnY3R3mrmZDlU8pvzju17R4tURLexNKLuZNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660030852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4v1Pqf67WMCmExwNRsPHuS3y1/Ah6ezQQkLbUCriP7s=;
	b=IM23QogPPZBn4iJ2yv4H8lnNoCGH7vFX701lKX4hFs/nW39nMEYFAT7NFIDR8w8x
	tWWVxdCfGXovF/CJ9xAW63dBX0NA9DbG2CZhR9lYSRwca7fLNtDb/5qQ4/OW3D0xR9c
	AoOg+elVu92VcfD2aKpbQLPFFXzUdyla29cT8uUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182818c9db8-0a9c4639-a4a2-4438-a78a-ee6642d60d73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 918904803f893056b6a3576f6fbe11e0cc406383457366bda76b6493a4f4fdf0
Date: Tue, 9 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660030852
