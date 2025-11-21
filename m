Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393C8E56A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763696514; cv=none; b=hmbfVFpo2+oCEt0J580P4ACnAZGpo2Q8pWjDal5ysv2hAz+uu1dK6JY0wGHWCujIZNqNINExYP3Rrj0X0rEgcyP2DLSRq3NM6oMmdwQ6qPkKbJEVWEbqeSZZ2xvOHcpYzpl0IrWezgVCXT+lLGTflFXe/p+WMkT7uyKSABMdsXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763696514; c=relaxed/simple;
	bh=QSti/6iMOPn8FE7ld4cakxFHKNdwKlip8e3c8JGcCGY=;
	h=To:Subject:From:Message-Id:Date; b=sCo2et1hh2+PhOVR78vjvS3yDH6GiabwRPYsCpkcWioqIh+0DuJuU1wrk87IN/nSaorEIfuUsUyBMl6GzASxOqDUwrsoSix142VpuZS544utbYW+Q4AuSXHGiTzXO+S0ecfF+ourC+9Vq1HRulPXbwh6MCo9jw62TO6E9C3yeYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9yOIe1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9yOIe1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A800AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763696513;
	bh=QSti/6iMOPn8FE7ld4cakxFHKNdwKlip8e3c8JGcCGY=;
	h=To:Subject:From:Date:From;
	b=S9yOIe1gC2KiCUQq9qHdWxbTHDHi4GVsigZRjgVjbNkbUHYfKuY+MQEtJQn1qmx3J
	 MBpqpfyMEhvcVCOMN/Bk+4GBHqq3V9zVAGDP0c5UTt4D0fm974FuSPNYMobG3heL8l
	 AB+3P1MD4tXcnwnKOTnASp6LDTQ7ryhAIBqrw8o5jawb0F+LO9rFVXK+pdQaGtsZkS
	 Klk4Atss1jfu93mG2xy3Svw+9rMMvxTFzdZkPJ6vUkqdLGg0G4cdoD5rp9B+X3S5Ws
	 lacNbOv3PrDfOW2bxpEoJgt2ei+h8BKQsDBH6RifMqwghTr9oNQvzA/XHazbEsBA4F
	 CD7SlzIsrWWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9CCFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369651358.5794.6208368890951990728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6fa07e37d45e70381043e896f69f632574154817b684f91920209dc5f03598
Date: Fri, 21 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763696513
