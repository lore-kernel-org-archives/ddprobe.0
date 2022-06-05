Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90AF1852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 09:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654421759;
	h=To:Subject:From:Message-Id:Date;
	bh=kDyMjpGt50HrJKQON7YHVhKIoy6NrOYq5onSLm7luzM=;
	b=I1b/1JDLF3NOcPqJaD/zSEiDQ/fr5Qi2OVq61lLjKAs2GeHAdQj9zabZkRzuKPmV
	J+gxj0iM+Tob9tNeHd35JJzjPG1d+sw/H31Y277KPu4gl0MWMEq5JWlnEE2d+eX3C7Z
	J400e3KnfP9KejrF+Z63J/w4kz9y9G3Fy293IgRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654421759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDyMjpGt50HrJKQON7YHVhKIoy6NrOYq5onSLm7luzM=;
	b=hWdqKhRMrXR8+viL5dBnrAHwHPnEyTCv5sVzVoVsJBE5kx2lxIPQ5Op1QjMxQ2T8
	j2ZJKgtVWmywvQC8T6lZUVktgXRoZEKdq5+FgSz16xjwDim4Ql4l49sb3Ipu4gG5I3C
	DG3J72rdNrFeDA+EmZIytxF14wOFp0ruHZ+MyH+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813338a52a-20175cc5-8ad5-4f65-b55c-fc3eb6681de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f03e9ae66fa878d04d2ebcb99322453db61ef3c32f9928d1fe24095adc43bd4
Date: Sun, 5 Jun 2022 09:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654421759
