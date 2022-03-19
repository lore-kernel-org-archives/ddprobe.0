Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896577B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647727284;
	h=To:Subject:From:Message-Id:Date;
	bh=DXm4uLSxF4HfnzwCv7E7tfiQ0sPUBKjcPob2LFM+xXs=;
	b=FfgoiJnggOh1JMAhdjnI0qJlOQDupwES0X49yCby+ei8ApDr04qaaF2Uai+brsAz
	vcNaC55AFOpsZDhUOiqPL8/TXxcX8j8/IzCqAkk/iCeFYKf1Y58zD93XiSgscLnUrwi
	Ip9aI6Y3H9Aw2FEk+mFynOAZ39gM+7q3UOhZ1WEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647727284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DXm4uLSxF4HfnzwCv7E7tfiQ0sPUBKjcPob2LFM+xXs=;
	b=bYEOOFcVG86rlq33gFHXfKQgey0tUlhChOzuMHBaKZzvi9yeS+qrzUML1sA4p8Ez
	MslCN34YDFKmMyMLEFPRZZNjXnsFEV7Gsz82D1K11+9kXHYycjgnS1ZEX+pQ8tmPHAm
	xRY37x24Tx8VUMOpnP2Oc0VI1NSON/cQw92hP1fk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa43311f8-b966ca46-bba1-4785-86b8-41bca257529f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7e0e9feddf2b0d7adad83e93b37fe5a47b37c6a39d40b556a0014a4d9643054
Date: Sat, 19 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647727284
