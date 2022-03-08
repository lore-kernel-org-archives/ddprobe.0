Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD60D7C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646737285;
	h=To:Subject:From:Message-Id:Date;
	bh=i0tjWVV0uSktx+B3tZxDwdxC/dgBCTt7zIc6vGZoEfM=;
	b=koSY7/IIXWymqcrlC7g91sJtkEIvXu01ZsHMeYi28EvfgBzdxF8LYwj/AL8Maho1
	Y+SilnVCEnnYuLA3Sn/8D/rBVFR4euVU+N6Nfyy0KwAfWAcR9yw1qT/iVvhH3sedsUk
	g/rwu8JkYxHrQWJ33QNOsJVW8WP5+hBSRa0SNL6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646737285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i0tjWVV0uSktx+B3tZxDwdxC/dgBCTt7zIc6vGZoEfM=;
	b=llDBLSJgKtkehKvOsAGbFx6ODZH0ccQHVPG5W9PVoGixyQKR9ePPrT2T54Vm5I9/
	vXpHauXobWgYhbINYrO3NNAqaFjLw1fKTPOhcq1GBHhhdknGwKtmULpCMB5FrsAleX8
	gY35ESly6m8oajqBkPwYgmHnDMzoJFZpFB2T4kRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6930decb-b4ed60c1-fbdd-4394-93b8-df2042838e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b44f9925b8740508c9d8231d4672172b48477fa86ee253b5b77f0ed3d7c6589
Date: Tue, 8 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646737284
