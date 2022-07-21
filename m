Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E64680
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658419012;
	h=To:Subject:From:Message-Id:Date;
	bh=sFyhLqBWqabU5Bu3NzAobmw0ZAWg8uG76+ihceP4v6g=;
	b=O/khVUEVLAJK8XBCG5PyHc5Hz46bQBi3T3Ke/t5l1TDYkojfy5WsBq2eXWXGt3LP
	o8c00eB3knZrn04NDjkbf5z+IcNWpdAxG2TBQF0LJ8burb1ss9o66OO8iz6Abm84HHF
	LDCLoe5OoDZxmxuln47cnlBmiiysw/ZVjpohhHIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658419012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sFyhLqBWqabU5Bu3NzAobmw0ZAWg8uG76+ihceP4v6g=;
	b=g/VMiYCrlq7xDahueC/nmUAtNcf9pjM8IuRJNkkbmMevRHRc9nSdvOqq4U/7+CO9
	nr/j7gVoQW9ssLc9uUYuAg64R5hYHALZUxeTSxvDOHSmRIaVLUi5zGf3CP6yVbi97f/
	hVFffUo60VdfeZwDAs4ky6L5jSIR69EKTelms8WA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822179e2f9-03b1e435-451d-49b6-837c-48ae2f0fe69a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c774782fc8098e81811aacc171a690573baaa01d711144885a8801c2dcde4ea
Date: Thu, 21 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658419012
