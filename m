Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18562182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 01:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648430098;
	h=To:Subject:From:Message-Id:Date;
	bh=y3oAeynMfW2YeU2Dn1oXpp0VvmMIV+aQg/mLzMgXAT0=;
	b=NymOGjdequCOFsTPFU007tIZxvsuvJnWDJwsX/uIi3BJHu+T0sQfQMgYnimymef1
	Us+An+Tlcg+JIU1HgAlQw1Ar32fbWVR2Y6vQc5WA+T8QQj0ZP1XuN/0HOUf1xa0hl3n
	V0DDiADSLOP/Tn57TVDp58mQQDvnkZYeFhbJu8yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648430098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y3oAeynMfW2YeU2Dn1oXpp0VvmMIV+aQg/mLzMgXAT0=;
	b=Ioozoy+culZUn5y3PzX+bpzUcthB749RtSOUWMPlxNjV02NkRZJYfW3xAU6ivxZr
	vI3H/LfK+AszDKHGb7nxedaUGHRLe8AmM8NIIcXPL0e1IWBgKL0d/KTc0yHgv9jYjVm
	EibE+N3vSmr0JSeDvyOI6GUQkQwEkLax74Jq4dRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce1727bf-97f8c286-09b8-42ce-a9db-41450e5a66ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 587cd7d1bcdde4282447dd2e8dd0e6fc3f8ed341811aaabf0bd61147bf9086bd
Date: Mon, 28 Mar 2022 01:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648430098
