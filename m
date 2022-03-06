Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9613723AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646577085;
	h=To:Subject:From:Message-Id:Date;
	bh=sf4NrD6gONsNs/pZmbaICVTGSRWJS2ghkCD3fyDjPaY=;
	b=Yzc1eRGT0bP5FbtBV2xqjfJFX6Z9FF1TYckx+NWmZXy28vwtTOz4EF1z0OkrjFh6
	+HPfJ2qazr2xlXPoMPF4iMO39yZklrfsuzPB3CIIIf7+06vPdDfgbdexomuuH8bbZgw
	in3SFBx06lPYCgnoyUkYs+i2sF6VuXs3FsXRGfPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646577085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sf4NrD6gONsNs/pZmbaICVTGSRWJS2ghkCD3fyDjPaY=;
	b=U/PmoyjtCaJcIk0/fVTQuXa6nsWH5814gXWnManN7cdwLBP11ZrIb5gVXtZhSlbG
	4Vik3aO+jn9VWX/Gnm48nAMDPxwoOIUjC15mMci+My9dKGoOopWL80LsyCpaVrYInzF
	AfP9QEPB5/GcIikHrYlSpZ+D0YyW0qZIWZjrS1U8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fa4694e-7299015c-190f-405e-995a-c56c3051d4fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f721dd20733e60ed946df77912e7281e95dcf8b24d23d2a52f53cc0e76bc287
Date: Sun, 6 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646577084
