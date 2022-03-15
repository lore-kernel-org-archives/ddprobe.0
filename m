Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DAE2912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647377784;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6qFbA6pggtyHzF8DYJigJqEETEgNLYknuj2Ko2/Pd4=;
	b=YSyIBzWCuAoFyEWT3IVHYjfHqTgrkhMX6nd7UpgZrxx7GzXWu//Yggz+yxQ/BzxJ
	u0FZfBPBGLwmMfa6wezAJN5mJnwiXiTmJoU/hGuThV1zuNtbwlxBsZ4bXHVoxfPUOgE
	Q5kbzujBUrU2fcz+vOxPwXmn85HKMysIYL+dlEb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647377784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6qFbA6pggtyHzF8DYJigJqEETEgNLYknuj2Ko2/Pd4=;
	b=ZmsgsA2B3JNNDYS2X0lj+VFfaahrMxUnCByqZLmsdDA+9er8ACgPne3ZoJmu5WPT
	/5s6Qkqjsngl/C8oMarbFdM+5n25di9Zx18vuQVypCn39RL23Rp+aT8UJardL0sfOkT
	wTndsUIM2CbalhnmgFP/woYrDK9tcQINI5PLMAJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f5e1fb8-5dc647de-9dd1-4718-b717-203a32c7f9f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d6e01eaf8ef8399139999a39c357de109b6eebed9c9c93e77685fc2604c741c
Date: Tue, 15 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647377784
