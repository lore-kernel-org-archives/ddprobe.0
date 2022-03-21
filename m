Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E3057D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647874885;
	h=To:Subject:From:Message-Id:Date;
	bh=xewa1Vm1/IaryuCaSdTyFSawLuqrUQs3vDTWgtzVSsQ=;
	b=BrWsUDCqq9z/vgQRZNWWifHCgjoH6l5EFvm4a0hxK+kFCcRKz5l6KJPi7InmPg2/
	RD6NcJwNisHM+08ntTQvK2BoW6y9mLgMvHv2JFbg7Nz+PzFJgFOvoYwBIO8ZleFDaIR
	gUYspQQ0etcMYMaB+cIfEvRaDf2tmPAwQCCwwfRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647874885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xewa1Vm1/IaryuCaSdTyFSawLuqrUQs3vDTWgtzVSsQ=;
	b=bUQLBoff/esPuaU+SE1QsSt8GYCiWNSWJxxvM6jenOJicpUMfJvp00oacL3VjFIX
	NxwhUGnWa3BkqUNiM4h80LohgAgghsIJUlN0Q0mYKZ+6VI2o4s8qDwgdXfUYCXxS5n0
	aO2IcL3rPSPMW3OcVdpwdY4fQqOm28ZwSOWNFsM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facff44d6-364473a0-2b89-4670-b80c-f32ef17f93b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07789ccef0f603303ebcf720ec6549ceaee313fd437b1df60890ab70aef635ed
Date: Mon, 21 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647874884
