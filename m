Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F8435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648464898;
	h=To:Subject:From:Message-Id:Date;
	bh=vMOA09gA+nH3DO82ln/E3hAJq4nMCiSAdLdmWhcKU+8=;
	b=XIe5P3jhx1AO/g3NdlPTAcdRfGFpPfA0+UsNz9O/aIM8h+AV3QYsbiy6ALnPWaxT
	n+Z3AOhqC2NpMLt/tut84aNUIolXUMp3hWguwe0O3HmamLpMzCzLdcZDzPQ15+d4LfP
	PV48bsLBE+BIDppUwQucaprl/r6KLlztV64LwsBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648464898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vMOA09gA+nH3DO82ln/E3hAJq4nMCiSAdLdmWhcKU+8=;
	b=G1W7V2TWj3Qans6RRY0PJvekjcH9vlTE+AX4ZcBzW6lgwaIY0yVKTcciOXE9cNzY
	GssfbvLYtEqQ096nmkuzGErpBvSpd1s+cdh0xfGeJF1kTnxl622f2Hmwicmhf/D1LGA
	FTa+vSgh1MeGJZyX6DxtNFZdca8GPUbiy8GI/9lQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd02a28be-ca9ca03d-4b6c-4e00-965c-dab7bd32769c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db73dd6c084069917dcfb555d81eb38c374d9ec2c67980322c79c3fb16d04d41
Date: Mon, 28 Mar 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648464898
