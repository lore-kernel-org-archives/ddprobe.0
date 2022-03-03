Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952B366A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646314884;
	h=To:Subject:From:Message-Id:Date;
	bh=SCzSIret3rIGDNN26TrqrufgRDJgWB7lKh+E+I1hFLs=;
	b=RFXYvmXGnHMGTZtN8jAEquhc/8Zxujc6XPk16tnsDcXYbGbv2X8aAN8Nb9lIEwsS
	ZcXNEPtuwczF+g8JnuIreQtgVx5/mfQOF8fNEOnwJkpCEic+wIZTq7fC9bf5FUCQ4Dz
	JVsq7f75yPZ4Fc+Ty1iyPztLdvP4uFWDJWwgBxos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646314884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SCzSIret3rIGDNN26TrqrufgRDJgWB7lKh+E+I1hFLs=;
	b=bcOoiN7r5PWz8EXWYwKnITNt8gOPbfqDKncH4CyzHq1EIgF0FQRNgnZnqmveC/N4
	aetFBgipeG5Vgk9Tc75m4gdzMuLC8q2ClNidF2orlipGdmCnJ/n5BhKBOv+2q4Snv0P
	/KgT1d4LYcj9L09HzfuM/BHTcCP1GqbZzx/rPx1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50038e6d-98659beb-def3-4641-8318-ac3dfd01b882-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88ab25af1f85c7709d641ff2e36715517239142b9e97c5d08c512a61c699322f
Date: Thu, 3 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646314884
