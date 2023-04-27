Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2C2C2CB
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAF8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682626326;
	bh=vn6exnhobt9TsGkeXLWrvhbvzX7KTbpCythevjI/Z0I=;
	h=To:Subject:From:Date:From;
	b=dvW4Yc6zmjCcUiGiotavNNlKOrJ7RkOZgYA4WDTwTH8hmqecTt8oqYx9st7FclyS4
	 AqBC6So+Vn2de4E2K5LRTo8T9356he8TwpD9n3DFaajENS8/oL5clIUBpR5oRQwbLe
	 h/GwuASQukUAxlAbVUZ28jtd810dZaPkjfQ96wVTY2Hm68iKRKsQrVX/K8PFYsxUlj
	 gVHuG60GX1yuoXi1Glf1l0ub9Vm10YTHzz1tz13qukUthOKiRnTDtg2n6paNFePlmV
	 5h9I1sLK5JPlL+6q91eS3oxadib2uiD+SGBx+TJUT1+QCeSaixDkLpa3XgQkyAK3HE
	 g1jxpXm4GNGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD03FC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262632582.26279.11359932844387943053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183c8858f3c1515c1da299b7cda63e111abbd2e467fdc0a85abae347254443cc
Date: Thu, 27 Apr 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682626325
