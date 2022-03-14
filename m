Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629D21B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647270384;
	h=To:Subject:From:Message-Id:Date;
	bh=DHyUQyHSLMf8D2VkfeAKT2sWNu+6ro5rDfVtfoYjtBo=;
	b=ldNPKAZBgf1flC4mpk4an1ALgh6qUodfbMvkvgcgi7VFGNisexJLkB55du0qsnuO
	X7M3dwmNBPpJn1ovHt8oGZXUzr3mrtHBE61mW+Ii8dIE0DFhAsYREqcHpkbxKfIGdN1
	sySzc6HERoDMn+s0Xyis2RoQwevahoLPMTg4YxGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647270384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DHyUQyHSLMf8D2VkfeAKT2sWNu+6ro5rDfVtfoYjtBo=;
	b=i1Kq+Zl+hIZiT8i/6UfbMUXsO9RECXfY1ak8RUSso5lySwvBmK030t3lWHALUVZb
	+bkavFp6XuU06e2ppYAz9gc2gt6Yc7+VZWczC9evqIvwdQRWFK+OM5WBPDxyvC9duyf
	CYtVxqdWn+AkM/dwfTZjAUQbq8zGoAS9ODZSa1SU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88f7546a-09e5f92b-0d30-41ee-9fdc-b7c2a60b82f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d48e19e680a88038b219438df1dc0a4e656f69ad4970f832fb0cafb61e4aa68
Date: Mon, 14 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647270384
