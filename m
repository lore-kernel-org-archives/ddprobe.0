Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190AE298991
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777568254; cv=none; b=tg2Ofr37zNW2q0EgOY/Tv02+e5ipa4XIjUxG9WFw+v+74jTTiGZn19teaZrbSdpK1ZET/9RH4DCtG6Vb+N8+y5hGIP4iHVcO72SWZN+OTLuf/89tUufHQ0RcktrzJbay81H2jkMcL9kzu7i7W0bh+4KiIjHOjMCi56gVnPKidf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777568254; c=relaxed/simple;
	bh=ZsT3HR3Lk2Oji7hDg5Vj7V02BVNzPX9nshiiLBKqSUM=;
	h=To:Subject:From:Message-Id:Date; b=tsD3fXXxXA7nRVNeiUK2y4jMmIASK8LXcRmFPBgKTDcdRDp49ajUWO7w8JJZ0WSurIm8x59ZSqSVM9e8h7tLTHBjLuhILn1rZWKG4g+EXNCb287lW+kvFSfRri43DFa3gLhJNIFm2SoKm3z87DcbTThxdjHA4QWcDbaU1Pxg7+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dbh23QOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dbh23QOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B958BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777568253;
	bh=ZsT3HR3Lk2Oji7hDg5Vj7V02BVNzPX9nshiiLBKqSUM=;
	h=To:Subject:From:Date:From;
	b=Dbh23QOh6ZqIt2H3URmwMqYCetkqjq0Y8LDrlJmjn+Q/DJg/diuOCxnlcaiMgUgvQ
	 AK9JYeBWKUis+QlLnb3kqOkWS/f1AkGdjZ5lK8dkzkBQ0daHncKLUPjwHWda2aVtPw
	 o7fOQLOJlNleo5VCyBpayZTGPo69mRKtAQQwJjY1PrS1m+JN8OCsocfnLrXpiIA/k7
	 pZW+ioopLHaok1+oKVHkCw1n8CI0zUVIjiFQcW7EJSVbRs6YUFxwQjZBNHlrHJ9kQ2
	 HbMLQEg1qRqWLR50mZbe5HuHJR7RPD/dcxhr1gYZVxOEUn70JNqhMlrKHmQE5pfsTS
	 2fF4tywyJIiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FCFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756825368.6076.5628741759610893116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311965bf135a17eecf6a376af7d43ad041cffda8485f0bbffe09e607be1e4ea4
Date: Thu, 30 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777568253
