Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91EF67C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646609484;
	h=To:Subject:From:Message-Id:Date;
	bh=g0J8rSp2DazAnUAEOzUSLvoT1ceLawaga6WQPxcP/Lc=;
	b=c/dAmVi0iSrkIGtBk03qp1QX/1J5RAityPbLUkzLhIjmtvHwTMD//R7zl24/liRL
	dRRZwFM5TM4vD/5Udrdv4SvCIqOV3EzSIEiZ/s2h4B9IUj/qMDmyiRgCIxxVSiYo5ir
	gN/K8mnNG21qWy/NmfvJRAv4plrWTanIEAZBozzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646609484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g0J8rSp2DazAnUAEOzUSLvoT1ceLawaga6WQPxcP/Lc=;
	b=WQju56GxzaTuTLHDonbpMrCOzNjA335fDsoMn4/pn/43O1pk8G4Xm5h2lgwKGH0e
	XI8deL6qRPme8QjyXXyhmVTCHlwbn07fbTmIbL0UZ7BzCq0p+SwR0+yLD8LJe7fxjPm
	/hramo1sR+JSLQ5LV8JKFLnEB6HZ1CYf/mZD2Oig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6192cbd1-df5b6d25-b44c-402b-b3e3-2ba96c109f00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddb2261b103a93db8af229b5b88f80254d868d9a787bed29a7167ab2ad9f2bd5
Date: Sun, 6 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646609484
