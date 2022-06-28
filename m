Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDFC257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656418612;
	h=To:Subject:From:Message-Id:Date;
	bh=Dt7BSpiFwZB10ja09sOj8zBwFEVMuK7Dd1fYvZhUanY=;
	b=hs/ZEoxix5SRedFMCHItZ9Un7mNuxHSMeXLbOZ56vMREHJZdtYhttV0YW4bYGHmI
	v8CQCaKJC+sNkQ/g0NoGS63EgioBLCCm2cdjFjUs5HSAXaRaLgKo0Pcdp+UMg2QzxjA
	Lpf7Oiqi+VI9g/boxgTZDXan2c3s82QmCRiR7CfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656418612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dt7BSpiFwZB10ja09sOj8zBwFEVMuK7Dd1fYvZhUanY=;
	b=a+hWdysrtLijX/9WKWzKaa0N8utKWSvfpfd0P1KcEVimoGOTewoa5hUrOhNOvPGx
	pERUef0Mgpqno105PBKxQgwkGbsguzEMTJBD3YAN0bov2YJxfzLSCUK5lq3tVmTDoTK
	drjJq/Aohfe/Z+NqxgrmsHq+gXzFlpaozlt/mCBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa3e3452-29cb89a8-57ed-4fd6-bb0c-7aea4813424b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ebfb0585274db21adaa2caea0b085dd4c8ee1d68951c4d7a506b897dea4a784
Date: Tue, 28 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656418612
