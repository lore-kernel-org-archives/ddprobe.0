Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5069D1366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647236184;
	h=To:Subject:From:Message-Id:Date;
	bh=ifalyfT4I4C2QVG84SJC+OSxU/X2jFnZcfX8plnNsW0=;
	b=ackD5wfc1Xp+t07Y2hW5LUGtqh1F8A1tx8HK0vWdkepzoMEXRi+wjXX6BshRxLiL
	pLgulBDsh/WxhNR1m/YDE8pg2GhFihHzaz2f0iAIZO3GwSWNjOlNCyb5ExFkNND6qJM
	ZzSYGmgJfeHcTjtk/oDjFD2mIiLPV+flAB4Swg0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647236184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ifalyfT4I4C2QVG84SJC+OSxU/X2jFnZcfX8plnNsW0=;
	b=JqJIwf0Selg+crzsctlVv4SXPrjDEvnPwRJlmWJW5xlBuvfS2BM50brlaMqCnuCT
	aieabqlzGJ9g1YzSEQJvaW1U3OVodkl9Smuqfv4zlcMiUmuuOcswQBC6ZCFGkCGxyBq
	7GIE/3h7MOdNEwn0na7TDvV/UWz3D2eMQCR84Hxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86ed7acf-9a4a8044-2fa9-4edf-b30e-bae36fb1039f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfcdb0ef1414e811929b1e92e5d7998c39fcd97a0235e91ce94cb287bd00fc8f
Date: Mon, 14 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647236184
