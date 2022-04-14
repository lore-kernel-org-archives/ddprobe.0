Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1165217C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 12:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649938258;
	h=To:Subject:From:Message-Id:Date;
	bh=D9G1iZ52mNO5pO0jTH+hxNy0PdhAcviAUKj3x5z52LU=;
	b=hxPyDFmEI/EAtvixEvdbN8Xlw3YfTpmOCGEFxsHnbL0MwIYC5X7Tcpb38mNxwnuc
	JFXEfCBMXmH+mAaNBvNP9h+xI3M1jVAyJ3OcXLrkTfEnwZnrdbYbcMm/a0aqjGY1bvn
	1V3A9NWXTy9AnHmN5h1T1ieL9dbCbhlmrajQIHXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649938258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D9G1iZ52mNO5pO0jTH+hxNy0PdhAcviAUKj3x5z52LU=;
	b=cjlPYf5eOL5Nglf56OFGOuTdEdQuUqeAQd5VL+h0EpNfFkTPlbA3EAKipU3aqP4c
	k0tT3JzFr+PmNBSUjULSilE6EHZavlgR4mN3vYJLInyIql2ww3oRJf6OGsugrIq7PUE
	ztFmpTUWqAgX0da8+1My6UZqGtpAVMPQFIK3+wzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027fbd94d-83d2b505-aa11-4bee-ad18-f73b78fcecdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eccc5a13f6e84a87c0025606d172b9449c5842c5260059b641440283a62d3de8
Date: Thu, 14 Apr 2022 12:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649938258
