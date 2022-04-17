Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7BA2594
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 18:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650221518;
	h=To:Subject:From:Message-Id:Date;
	bh=9BBFcSBJ3MO4ulCYvyJZEqk2I+NNec22a/5vW08dtGQ=;
	b=O7df+XSa82Z/dseoLbmhqPdqO7dJoSk0MH1dc5owWDHYhDBe5jKSNlfi5gsX41cQ
	zME8bitPZoCkkqWSj1P63NZOq5vlAJTVTL0b++4Oy5cbhZrjvuwla1Ym+Lna/eu9vg0
	uav7ZLZ5EmYQTEvxkMW+HwiuteW4tnonVWROL2gI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650221518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9BBFcSBJ3MO4ulCYvyJZEqk2I+NNec22a/5vW08dtGQ=;
	b=UoQZBZ93XTMiiuNoNBl+NZU2aAfGSi9NlRzWfj2e06zhGk1SsGqDb54hmMDopfmV
	1JpzTfsD/BcAG+IQKxGW7eQO2GqVPupnH6kxREFjIItJyF6AK/REvd/9J1mhIA7a9Mn
	jyHIVOytfGO9VPBbG96tcXJMPEm29HkGO8HIzK3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038de0da5-7f148f0c-0730-4cfa-876c-80b6ef10f653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61265ff6caee30cccbb6ef5da6295c99be26946e7eb8508bdf8efdf541a12e70
Date: Sun, 17 Apr 2022 18:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650221518
