Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651023A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657612612;
	h=To:Subject:From:Message-Id:Date;
	bh=eLR1rcP58ZNEZLOp7JVR/g1lCi0F52lU8IQ7vC2a8WE=;
	b=G4bG7/+h/RhZAM9QftGwuZ1GgdkemcxeRDrpql2SldYxugsifelxzppBnThBMKHm
	+wNYiT7IYMRqJuxqyVLyun1AwE/qts/eSMo0CKdQQmaas1Xh2LdtfDyAkWOdCT0mBeX
	HTALh9Uen5fm3dhou7ZNns1UgHfSkvFnuHIeip4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657612612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eLR1rcP58ZNEZLOp7JVR/g1lCi0F52lU8IQ7vC2a8WE=;
	b=fEFTo+AkRw2vNU24Qw6PDiZ/VMuKVL6rjiS7JZ+az2QP+shEevhgHa6WhOKEhTwK
	524NBNzEPcXejlsvgbME+8eo0RX0MiTOZ91JDW2luwU7ITpD7yAyNGCd0xdbatHQwYZ
	KQHeJ9mfgawCf3CbKsoUUi8FQqyACnJJd1uXDW+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1693312-9501f783-4923-4bc2-bdfb-d377c7d924b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1882615bfa65d36b4d701be37f84c073e8a7587e2bf2e47723f8f3b817a6fecb
Date: Tue, 12 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657612612
