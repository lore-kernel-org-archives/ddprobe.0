Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AC57E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653060359;
	h=To:Subject:From:Message-Id:Date;
	bh=Vgs/RFYAGYJJIZWFm8x5mQUtREW8yIlhaX0STPbiBhE=;
	b=R0MH/ctdnRWPi1pkdh6p2JGOdlpVnh20e25JDxQ6+MNZXVOI2oHwxtPwthTgaZ1U
	5ky5iVvAPHUjE+rvbzhYCZqSCo4UuNT4Y9nQ1+JFgdq5aXrvAm6Fw1Qrg0B20FcBMYM
	POEYdVjsubc0oJHxymxenbJ9N/fZ4F3DH2RqXkn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653060359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vgs/RFYAGYJJIZWFm8x5mQUtREW8yIlhaX0STPbiBhE=;
	b=YSomL7YO7oMn4CFlRrhAjawMhVlnJtaOaBKfNfLAPcc1gOGG0bDeDAGnu8rOVASZ
	Zw2dienwPv24uV+uXrSjDt/OyzXzrctGxIMFa5ctiJGwnZiibR7XQkN8NOxgnngk6DM
	gpZe9eNdiwZ+/mvLJZFEpM0Qmw/foc8nkPc1zuHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e21354a7-1d22d3e4-10bc-4a1c-bf49-8b10961efba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aeb2d27e737654e7ee718bffdb57093e72a6504d8389bb45216c38f1302935a
Date: Fri, 20 May 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653060359
