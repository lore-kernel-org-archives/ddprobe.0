Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C8C1876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644963384;
	h=To:Subject:From:Message-Id:Date;
	bh=OaIRpn2l/ECKsvId8jlBsgiCmgQkTejCM5zScrhxgNw=;
	b=ki0XLZEdiY11SLciVoOnBpqr7dIK1B18yeZz5f5lCRx8pFNlPRjmZpet0M3yGBFg
	PC0JRnZL7Kow7zeVHGp2+VJ5zLUFZFnIzKamai8YuEXxfyw0JgJx0lWiO4nL+hRgAh0
	HR4RxRiprKSxxRM6zYqmAZp5ph3Z/LhaytLt3DgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644963384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OaIRpn2l/ECKsvId8jlBsgiCmgQkTejCM5zScrhxgNw=;
	b=KAL+TC1TU8PbWB6eBs/2LA2voEX7jl/J+mmFtFPLI+ulN0AH4cx99JmQ1dhJyVjs
	ZdcdT4zTgTRGoSsTc0QAqTWWziGD3W0doWszinla8IQMsHwGjRH/vDv0A8dZTteo8d7
	krxXSnXBWQE8mS+bAuD6CMOb9u+d/QTykJIYeZxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff754d9c-9150673b-82ce-4ee3-bd5d-c8ce61ee96c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9aa901958e69c4b2864d1a1ec94ba736bfe4a289b3c65223759840eaa35b5522
Date: Tue, 15 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644963384
