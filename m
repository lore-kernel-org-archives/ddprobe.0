Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BE85EBF
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645383685;
	h=To:Subject:From:Message-Id:Date;
	bh=Qfz5eUaim/zr4sEa62u3F1PIkDIlOom3+gsP6fZ+qWo=;
	b=KUwiXvePTR9ftu+DIN+W2590f5v/aw0g81/jR55WqEKzRhtiOgj1EznwVA6mDZ+E
	a2bWm3Q2Z10UESHYhrwkPCjLNQBB5nizkBNwGOY8xI/A3+23J5Rup7EAqL+GTEDnieJ
	iA4z+T9zfsWunshMeOWMg9wEXfVsiIS3cSIXEPsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645383685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qfz5eUaim/zr4sEa62u3F1PIkDIlOom3+gsP6fZ+qWo=;
	b=MN6uzyg3OpiUthLrd04xtaPcjPMIAqPo2R4hIIIbmHdttIeatwoogyxvxhOtCF3S
	9mQF12exE3iQQOVDj/1izt82U+f0GPC7hXvv+YkCO7SdAkf4CNUcbnx/Bb0+n+mjzZf
	fLJID9Q/kmFV1QnRG1TnhfB2IRo53jCag/5JpyWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f188292ce-bb6d084c-aaf5-4d04-8832-cfa1e6dbf049-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e52a7c2be18fedded4a49bfce583cab37a29caca0991a7dedc39b433a2ee935
Date: Sun, 20 Feb 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645383684
