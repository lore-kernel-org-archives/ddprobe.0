Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B81229A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647850584;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnUJQ5fmXQjt06DsDdbR8V/wUXEPRBo3wJU6D6MbXt4=;
	b=CVQ0rKd5+JB17v8HW0mBTQZ92K1a7lNHVELiqyF5nlajWFgQ8waL4/NCI6w52Pho
	FNW2cbucOOaYI5IeRBCd89UUXQSfHh4uNj1lcAC4EAlJ2hdNpwYtmW9gjdemV9j3INd
	M5hubBw4STv/RJ3hmhybhI7YEcWaOId9jFeJkRUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647850584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnUJQ5fmXQjt06DsDdbR8V/wUXEPRBo3wJU6D6MbXt4=;
	b=RaVyQk3wVNvPszWq8djiQW8orZPmP8kHLm+hNOB+chdaaqt2kenoAICU2q+riani
	K4nNVbA9mKwj84+L20jqKqa1kG7lfLVAW9PKaC4yVGiTvBAzb3nwOL0dLAj/2S84Ajx
	XsZEmfzpmapWfSj43QxIS482E+CeJoFjApl8oHog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab8c7a8f-e46b64f3-bcb1-4d90-8b07-4df7bfa2b738-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d13254ed938b961a6ca8c0aa8a5d2db79160e08a6d2d2b9def34ad6369e0fc2
Date: Mon, 21 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647850584
