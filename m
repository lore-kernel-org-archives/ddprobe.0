Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AE47B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656590812;
	h=To:Subject:From:Message-Id:Date;
	bh=rEf2/maDjhimwdNWMjoxcy79Gxgjf0WIihTvtzi6L/M=;
	b=lEY7UrAPao/KT1t3xn5iPJOi7j7STLIHAIxdeVPy/GVGlKlwpPGJ7Pj6NAC42kyb
	cZnKTUmD314G0fUvxZKhS40ieoMBDZ/Wdpe076dKRGQAkdTE7yfnbf4EI9XKPjD2oxP
	tAfTEg9HXR14iksvfAx2u3JPfA0wDa7l35EepO2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656590812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rEf2/maDjhimwdNWMjoxcy79Gxgjf0WIihTvtzi6L/M=;
	b=J3EYtYyg6I43qgX2Cg7dued4kyCldVFQrJA8Y0Rg8jB1k0ekox7ly3tPQoxLLVOD
	HSH2EnJPuSgMcErYbMVaLBjsEl3bUDopILDZTgiWfQVJ3BY/FZbC+1UpW0oRDtoLS/V
	z05Vj+8oes+5mjx6FZ5PKqrm1q0NrLrArh1glMZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b481c4ad-9f97154c-bb0f-4c7d-a2bd-f7c10f2e336c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8182769f93f45a77a949caefce7b7f1cffd8323bfa6dc5e68d76c7b72616951f
Date: Thu, 30 Jun 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656590812
