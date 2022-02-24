Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED961386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645686685;
	h=To:Subject:From:Message-Id:Date;
	bh=eO5+GPwjRRLyEj2/aB8sxuvvcTARHNGbTenrWQONdS8=;
	b=kuwfgwr0rvczvlcvSqn6J8KiMI4cfcNWr/RWgTayS+8cx6RovtOew+bQTUXSFgpl
	AlGgVI4t8/7Y4ZuM7xAJvWWLo2PddHhbFAPhZEh0iNpkDC9gVNly0/CkM2lNmZXrPO9
	dyW8VtPV/pRJTy2z/J6IdfuyVoEdl7szMPKbzEMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645686685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eO5+GPwjRRLyEj2/aB8sxuvvcTARHNGbTenrWQONdS8=;
	b=Th/Aged2xj7x4KVzzd/x0cTpYAfW3s+qttrdJMeX0C42r0BQx4nS7QdzlWCnAlrg
	B6e+gZYE5XtaYYFJRGaX+HzCuaAVt84CRlrya50qvLS9i/G0gk2u2+OwRuNDZcYTJCb
	TZnP8Z3XSFH4WH4iIaPyktdzDvsVzQ2/G0JN0PSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a91fc51-4379436d-2e07-4342-a6c9-65f5d990961f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aef07281ae4abb153a6385bca88ef49dd0aff842e54510249121d0a4011310a1
Date: Thu, 24 Feb 2022 07:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645686684
