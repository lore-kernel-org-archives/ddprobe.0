Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5423C187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645020084;
	h=To:Subject:From:Message-Id:Date;
	bh=Mw/JpCsTMGNPbybASBJ+tJapuMPY6DWL+hJKjZqZ8BA=;
	b=l/deh+gzifQjso1KimQ/2J03Kr1G850LTdmcRFTwsD+bK1ImHbj9voX2YP0X02a9
	aDhHMf9asj/huo9dD5FGSTCpDNamwSMMTU6aTJm64Sp5wlg6AmdrQNfaw4o/bK2BFEP
	h3D9JBlNSror5/lUd/HPGUpGS94AOwpXI+gKhiR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645020084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mw/JpCsTMGNPbybASBJ+tJapuMPY6DWL+hJKjZqZ8BA=;
	b=RHvFPF3+0dpqYrJVqeHYuFaT6kmPgZTL5Q2Q8Kzqlt5sDltOPPuBQmsoxX2lkcUi
	tmzlD9ggK2E7na9MErp9wczFhiQmmVSBCtg5DQL12vY053c1Ex5+Gze/1OsxEd8veCv
	BioHMV5busQRZBL9cameUqknKQnl2JroJPhfwib8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02d67a0f-b12358c5-49ad-4741-ba31-c28f0bbe192c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0b884c859857fb1d1db53c1b9339051dde47fc5d7cf9f820e13a55709c573b8
Date: Wed, 16 Feb 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645020084
