Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483217C1
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651487218;
	h=To:Subject:From:Message-Id:Date;
	bh=mORBemor8PQgRggFcjxCCqRnKe+R1p7xp5CMoWwtEYI=;
	b=KP8SMbUAP/vxDeDB6zbEBDD14apVRaYlbbLLCd+lGTa9A1Z+8bSeWSXQINvnADdQ
	yOuAc1ccLJdtterO6YviQzMaPUHPwZHjWKSkdFhhlL7Ej0eTRNXoH/w6FcwfdaztIIB
	j+LkAQ/JcePtq9mNSMpcTVN4mG2oX4UPLuaBgFms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651487218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mORBemor8PQgRggFcjxCCqRnKe+R1p7xp5CMoWwtEYI=;
	b=b7n5iOdfNxrmYTVwO77NmLnbXp8eLq9To6vt1WCCq+9Q2zlcA8AWsfTSB5qe5I27
	zCPADSgbR1VYLA9/kYAFMIzbcFGNulOQpoURxwsXafi2NRwGBolnmsFvSyByZDJgEAq
	eCvl6NpmGYBWBiNy2etpzTIkuoJyHva/+txwJVGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180844f1a38-4b36c294-2f87-432d-849b-33ae9ad82f11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2dddeb47c6f71409fc5036006a9ea75477b4dc21d55425c3fb7d346f9c635b
Date: Mon, 2 May 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651487218
