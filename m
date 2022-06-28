Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054BF368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656384412;
	h=To:Subject:From:Message-Id:Date;
	bh=6yJzImzj/ognyUq6VYGhtO7m33aNMi3dNGbkfjESxDk=;
	b=HLPOlyZYwK7qPA+CMrwaE/LIiXtVaYR/lg8GqaA7WvippLVm7loqP40fpSC3eIcG
	Kn44gC2Uuk4d1fp0FC++jPUf4DWt70He2P9e4WGjB40UkdBZSHd1iB3c/JHLV4a83r0
	QVuCTHYRmCcB606veMJ0y2zuwnE6k6FJUx4InKNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656384412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6yJzImzj/ognyUq6VYGhtO7m33aNMi3dNGbkfjESxDk=;
	b=EIMIxwVRPdoDGsOGDSMoHRDVeU7Sc2gtg/Axu9Lsh0I0fEhMrk45b7uwrm4yHrxc
	fUZFTlhrknLOK7P1bAERzuxekKKsgUhrXLujCTpop/axfzvE3+w2pk1wCtPw7rf6CA0
	BBDjA7H8lsbAz/FDZ51/ysKUEyt6mTOj4BgscUOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8345a83-64a01d23-b4f6-4956-9407-eb46b3de4917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0ea2a80c643abfc1266602084ab853a971286ef65557a8ae17063bb5808a222
Date: Tue, 28 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656384412
