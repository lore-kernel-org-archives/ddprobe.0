Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5491C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 23:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655854859;
	h=To:Subject:From:Message-Id:Date;
	bh=J+AvIG78FNqFbE2VoJErAQ1PttkX3TGv2JKj3ypDJBM=;
	b=YW6I5xeafb/daqBZIoEmspXh1B+EKurYpIDYMVAW58Vz/sJX0U9gN7zACqM4Hh+v
	PYNpUVOUcRi+6pR6nZrHqFHENqJfDRDmL1hhUwyevDgyOHbs+q+H7+Be82nmiCgmgtP
	6aO3oGUGIPXH2Ix9FkeKxPazgi2ta1qrEixw3EaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655854859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+AvIG78FNqFbE2VoJErAQ1PttkX3TGv2JKj3ypDJBM=;
	b=VyPYXMX/IDj4glRTEDBj0W/7FvzFS1LFD1fVt+EuGtC+rI3tpCzhg8sOD2AODOoj
	gPrzbt9h3//8p/pe9Y0b4uIF0597JkXqBKthxAVH97uHFSL3dG/epzxlE2VzmKadXXe
	dXYIEKy9m1TVxpkP3hpbjmPAKFG1zybDOVNgE4qU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188a403d4-cc708e2e-8add-4cc5-95f9-21174cd18260-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a2c380123f27ffb385432ebc337400722bdb88c4194a55e954efbad22cd25d4
Date: Tue, 21 Jun 2022 23:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655854859
