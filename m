Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0673915B4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 02:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652237939;
	h=To:Subject:From:Message-Id:Date;
	bh=+S0ETNJd+sarALF+DOo4yHihY9UwUIxeV6GEH1gNZZQ=;
	b=Bv1EmWj+NRAISAeRWM4HjeqIZamM4rbKvS9Lcno3gDUr3ysSyh6WTMoagK//6Lgg
	Fl9nc+1lKzi/JlYOBgLrlBB5UC4SGJUKTOJY/U7Cv++EE3CIeK46APEKbrWuLpeUWVY
	+DgWQCIXZOxrMpJRfOrY+W5JPd3lY8xgInCS0niw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652237939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+S0ETNJd+sarALF+DOo4yHihY9UwUIxeV6GEH1gNZZQ=;
	b=AH8ifk0ZSA3Kg/xSdANFr/4tfixMgoVfL5ujxHX/oCBGmJM6lUxDUAMs3gmQ41aE
	nAu2trtpNI83lDMKYg02tnAgiBkgBNCuMrLpO5Fw+Fj92F0o5Aswvd//h/Rr7Ana9q7
	sMJBhffqjp1JgalISWJGOYZhvKMaY6WyhSVb9LwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b10e326d-80508924-d47c-4ca6-80da-83fcc621bf88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db5acab64facfd5e734c6a23eea02667ede3d53843ccda8354a78a0b9277174a
Date: Wed, 11 May 2022 02:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652237939
