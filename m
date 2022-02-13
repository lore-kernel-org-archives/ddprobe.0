Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40F47A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644769852;
	h=To:Subject:From:Message-Id:Date;
	bh=HhhmcLunOrfPBxN5WhtL+rYz1e3b12P537ovNyMG/u0=;
	b=DLNR8GPqRQzEUMStqKpWgGlbX84Y1SAUBL9m0/yK+6BNtvevZCkFPCH4pY9nASb+
	9aHQ7rnAKS+4yq4r1sYSEV5NH5Q3W0GREN16Htx1MzomC2i5Ia1yron7RljXeOM/3c4
	hm85IM+nSjCD7tJTB2K7qQHxAeHqO6B4KvDGclME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644769852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HhhmcLunOrfPBxN5WhtL+rYz1e3b12P537ovNyMG/u0=;
	b=IGLPagyG3l3LEvY77iaTLkZ3eCmZwWpVNyEEuuQ+tNpCOH/L/Tv0gP37wgGTGqqX
	I1fGiZfP3BkbDdSUCenRIZygORDwptl0BbiPelqmaQAM7/gyg0/Br8VLyC7qbxrliyC
	eZMznJjYvljuMfUCrpOHPdx6y3DdhXOCOBP+FRm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3ec3d10-b8b69bec-7d2b-4d1b-a340-366b7aa8b3b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86f724f2e89d791de0e059da4907311b0337eb2173c8a36fca3ca4260a8690a5
Date: Sun, 13 Feb 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644769852
