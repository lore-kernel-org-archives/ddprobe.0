Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B130AAA6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779772954; cv=none; b=Xg3sIoOUVRpMjZPBaMLJagKgyUkGdlJpgMFLj1la1Lazes/9a/Cie+sVfk6Pi+h+sZ+mXan5LKEq0++Uo6E9CuIDu1qAWRLoj3/z1vs9tR/m6qaWjFkvypoino0WKa5ipWweIIqmrG5KSwLzRDavSw8Ggsk/6zhUwIgBavLXVrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779772954; c=relaxed/simple;
	bh=EHWcxeG69qc+1ad7OgDqIOx8skL41ZTu+vjlLYhIX50=;
	h=To:Subject:From:Message-Id:Date; b=EEcXgGb7PMeJhRXwO2g/asqpMlOmoq/QmJ+NUGvcSFhlzJGkLVXxytXMONNfrs/kiwCxKI3JRKkWpcz0lCkionNdDb/RMQlocxOAQNNrE7O2VJH+J8uAr75GhG8IcOWqY2NZBpGi3tJ+PPLECU26W3MpRsLCv3nkhllYfEbJAfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3aI4l0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3aI4l0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD460C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779772953;
	bh=EHWcxeG69qc+1ad7OgDqIOx8skL41ZTu+vjlLYhIX50=;
	h=To:Subject:From:Date:From;
	b=b3aI4l0+RDhcbDDVbmj1qfb8/77lj1el3zMo3kPi+xi39eikVO5O0lFh9AX/br16/
	 8908cUTyuIlCbfPzCvCJj/C0DFIVyafAUB76NuwYSu/0mHmzCOqJK8znifL8KbaNCW
	 gkmT+Tr3bnud7SWtgcNCckxsRe23sv6Qr78wJ0kD2TH/3w4JZPqrrlp23cCcgL+L7i
	 CeYoMrUsgRocPLiYUWTgizPE/iIklUw1vshh9vRC69C0P5VqvDKvj/iJmTY55bxRwQ
	 NJ7AN8RN49rwee43BrzbnZa9Y5vkn8bKGBqCc/aT4Tz+peg32QeDNxZdWPBMDFo33f
	 H69HJpdni0OGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2239CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977295372.26575.1566102269908736644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8825c04c95e5dc719f8a1306db3075b6336585a5eade762569e889c5b604c165
Date: Tue, 26 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779772953
