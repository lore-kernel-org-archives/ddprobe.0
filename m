Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8389C1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644973585;
	h=To:Subject:From:Message-Id:Date;
	bh=1OjgCeLFk9dtAzOeFAl9Wbejk/Y2N8p4/h8mAUUKWLc=;
	b=lGAQyjPWip7P76rgv/ZwqPbJx2VZMxhJ7+SFoZWWTBNdl+gnzOQuV07PrFajqFQo
	ah2sa0acNp4sI8gEpuCjZV3IWsT0AX7S8hlRCEXWKP9KUcNaWmIAhoXJlpbpSmy7omy
	wFMoFsbjugRAmFWp5BgtVcdH1ircp9aaVRH7QH2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644973585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1OjgCeLFk9dtAzOeFAl9Wbejk/Y2N8p4/h8mAUUKWLc=;
	b=CAj+pwxLIoQ/ixtfNqrlfXygGEzpsIrAvYZXCnoy0dPGZaGcpEMDVauoWJin+sGr
	T7F2H4vvwgnGXuAAf8anMohwDL3Hc5ZJx9eVod4yRqR3bWwwJgYWuzXaCUEt1Kwxp/U
	Iaq7NasMy2JeMzzuSoo2ZCJzG45eDf16B/2gLCP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0010f178-5b692152-7929-426c-9ca9-ad787d8e22f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2677c641603467d7f09ab4ffb6aded4a65a117c1ff6b005cb4ad6986a2122b
Date: Wed, 16 Feb 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644973584
