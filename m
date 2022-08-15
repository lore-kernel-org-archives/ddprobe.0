Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB8E7E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660528852;
	h=To:Subject:From:Message-Id:Date;
	bh=o+CT4adT2uTOcyGdeeEFJ8zm7aBNYx57271dtczUmSA=;
	b=aa7iz1WblW18SWrBa6gjJaOeaXi9vcTyKJlovTfwXs6FKaPEe5e0diOm5nch5wyb
	2J2yfqX3RmMMS1+WgDwHV+NlX2OF8PSkLXGiVMfRJGB38nrh6oTRn+7HCHi2iRtSKDa
	sXO+l7wm5tNLPi2VRgRfyi8dwWrf5/jdQUBpdWt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660528852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o+CT4adT2uTOcyGdeeEFJ8zm7aBNYx57271dtczUmSA=;
	b=UDsT5KfeoCh4BL6tF2Pebs7YCN+VHxGJZkMb7F/vXSKuDgrnoH1anvi4/Ae8oOTQ
	0EIdgyQf/UGpywZEtKeSHTHfeLrZbE+jEVPyAgB3SBqwiCTFISu0V21YuPHUwJUKq8U
	EXxw4r3SN2EWeZmjf/nL/+50tsRq8w/PRQzIEMoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f3b7e55-d733c19c-eb55-4f80-8ccd-ab686ee5a9cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8307f3edb35c2e722758395b08ca432b0aedd9a1455004cb95d444e73c032137
Date: Mon, 15 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660528852
