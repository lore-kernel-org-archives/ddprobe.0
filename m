Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9F34314F
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774154094; cv=none; b=aipYoUU0uRqe8UtEVWmAuXYyusCDeFEqkjjBOBsUrXEVIOH6Vlv6JpDJfQeI5qnmwuBKczblPiXHK3+sUjQTxfMkRwN2Ewu56mHdAFyN3iipqMZg06/v9iLnbwK4kIXp6uMzjPzjDoRPADFcrehdKU0+sK21mZvil4QDsb0Adbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774154094; c=relaxed/simple;
	bh=M4n9CXnEd+rC/f5oLx/7fMM8IYcALOO9IsTVHT7Hajg=;
	h=To:Subject:From:Message-Id:Date; b=oPLqUQ3woqkeYIHRXaqEEKDcgFUF1LdgRK9q0FrdmuLHmCFiF8AMx754BMd5z5y3MZoacREhyzFs2VEI3zO8+dPM2uz546karN4MTv77hipoGB1V7tNr1hhxXIsnPtwFdrU8hBTo9rN2VxZ56Ty9FiEFkSee2o1Pu3RPhUrq/kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMcG3ouQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMcG3ouQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CBC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774154093;
	bh=M4n9CXnEd+rC/f5oLx/7fMM8IYcALOO9IsTVHT7Hajg=;
	h=To:Subject:From:Date:From;
	b=gMcG3ouQ29PqmAGZ9O+cQJnFa7ukf8UClmhPIQ+HNzTuTXSooh+Ek6I3iHSXpS+pP
	 6d0xdCvsJSFZ/1gonygnVUKHxNWNRifqRXkHwkBwMj6MHqD1vbKnsnmphb+IOgrC/d
	 VSMuoNtAqkYubyUw6F7r7fwnFmxpoYIzYM8GrjkRb6EiJIFntoQgB6SU8ogV9Fn5E/
	 DnrSW6jYoj3vU0En3BO5IgV86o1ZKKcE42e2bZnpCPTzGEQPtdfm0s+P7/GfBDIETU
	 aWe59L66IfqpczXm3ua0mXZpbmmLb7Y3UYs9KI6PVvsNF3WbNtGvuBuyqhqbEhmsIv
	 Uiy0g9chrW5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378EFC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415409357.23626.9701268124828988726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30106854c7261d41c6b80a6eb2fc0d80fc9688b517d0efd03955099a7c300ab
Date: Sun, 22 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774154093
