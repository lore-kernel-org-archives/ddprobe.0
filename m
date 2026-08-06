Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448631E9B3D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786033834; cv=none; b=DevbeEyQUhUGpOinsdxS3oSfHqyHHWBsC1qQJ8O/H4VJIdbjvmF1jBUIGApYpQwtZ/RM03NPMk5iv+3ypeGhlYJ+MxW+P4ojrXh3yzkh/ltm2SMD9wCxytRik5qK6wHIk6g/WCjdgLYdXoA+4ylkyjKsQesRPL3BXG8kLswDcNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786033834; c=relaxed/simple;
	bh=zh3EdzjvwnUoBaCqzxIz0tUP2Hfmzm0dfr6zFGdCa9A=;
	h=To:Subject:From:Message-Id:Date; b=QEG8V6DWQx6eL9axD4Vpl7TiDfhnLmfyh7WiGgjAonQu1046JjZzi89nNjsJfimO/QhqJ8xJPvr4uPSHgEA/WBKsSdcYDkhoZSGZgKwE5Uv1uRU+I2TdhrNShgt8jIZZIr2Ecc4TspHWZHT0BIcSz8gBSwOMyCBbPlLXsVCc6WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5+2ZZsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5+2ZZsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E25C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786033833;
	bh=zh3EdzjvwnUoBaCqzxIz0tUP2Hfmzm0dfr6zFGdCa9A=;
	h=To:Subject:From:Date:From;
	b=X5+2ZZsYCt+3jSuFx+MyMfJn1uczQjLqlrEGgJb6qzQU8TQPeIYmLkkcxFqnySXPH
	 8bVhQM9tsxCcmEFdeDj3w8XRaZELTNMdRvoeYhHbxGG+FixV24qS6Du5c1fIrhLGnD
	 tRr+PHGA8PuxZ5BW8nS+yNhilUmoADFywn/X/y6RXsT9J3HuvcZYYqcvziEFkcIbCd
	 o75Wc65ekJRa5LYEpf1rjZiivQ2JwJ+bUVDPgjcoo28KThl+MBUY1+Fs+7xDpw3aK8
	 rdpWneIuwKrQhMfBuBpZyecZP9EHCOHnhSZ2NgNPrmqEZCqUPpP54iDWz/h5WSO2nf
	 5YuS0eCTTQ6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D2C5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603383369.2304.8776178185991759833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04774974605490f1f3db793bd8056665e502831923d9bc0c8381878a7760fda
Date: Thu, 06 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786033833
