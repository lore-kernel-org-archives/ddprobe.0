Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF0129AA
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 21:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650144778;
	h=To:Subject:From:Message-Id:Date;
	bh=zAR9x8E/zTqJwCURolnP32iMLNPdhLBUmRmssD0A0ro=;
	b=XEuekMq3ITsDJGpm6HIqVuKjDBXO+ihThS+93XvcvMLItn/xv/GuuK0p0qaCleAd
	fdZ431GgMGES0sZSHMaDIM6u/liowRZ/MgM+NqnC+u4znbJ++tyKFig3BTwY0NYDSRL
	IK3O5e0S0M8oKG0/9bYaDP/Q27shwAY400JB3lP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650144778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zAR9x8E/zTqJwCURolnP32iMLNPdhLBUmRmssD0A0ro=;
	b=Dzc28KlKHRs1M+vFQfyg+oK86lv6qZp5TrWN1v/4L06n3GCx/nYTpwVX8HIbrX5N
	QFrpAEh4ccBwWP1lRibqC1veV81jqf1EvDtBnJffXiNqZ20su+BU6Lejqm3WAsrHfpE
	Yn9WLH+vgs26T8Am2WoKG38jEiZWQh4OR1HSNryE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180344b1848-dc889908-d0f9-4cac-910d-b0c3480436de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9510816da65d521bada004e357f16347e38ae80b458765732562246a035b241
Date: Sat, 16 Apr 2022 21:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650144778
