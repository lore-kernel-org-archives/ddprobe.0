Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28851876
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 10:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650537298;
	h=To:Subject:From:Message-Id:Date;
	bh=tO8DwJ3OMfujYxnw11M/wMI/2kkGT6q/ITzDX8AolUQ=;
	b=dqG+k3gx8N309/pl02DctcDqor56YN0g+5w8ML4/CaY/vc3dXIANNN+yZM58aISO
	yxtxAP9X1GLNTij6cotldtylr/LYDm7qDJLrTM8LP68OrXdeZjP57TiR3GTG1jStPsI
	6xaBqo7zNDn3TZj27qILluBHMnXqzha9ZpNw77vY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650537298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tO8DwJ3OMfujYxnw11M/wMI/2kkGT6q/ITzDX8AolUQ=;
	b=b7KUOIBoudoVJtXATLorfMKUHsx59n50dta9grsxHEPKuYD8mS+d4KfnWht638Nt
	Y9NANGQWn/buGBYRU9iudv/H21yX66QGso7PoVb1W5B5UGOoGW04d5/ZMIfHBZvOVok
	HggtjrclHFcBUZLIUDd/RFOhyOKoG23BE9iW2C84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804bb07952-772adca6-9e6c-4ff9-bbcc-72053236cea4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 808ce528c2a11b891ab847de40a5b62125745d8d3f7e8bd45338bf34e2b1fcf6
Date: Thu, 21 Apr 2022 10:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650537298
