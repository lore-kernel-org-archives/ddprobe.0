Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415B37E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDDCC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678003025;
	bh=/zWyhRz7LwoES5RSybYMifMOX7fF389ZwbRXl4czqXc=;
	h=To:Subject:From:Date:From;
	b=eiyo67Df90BFO6mI1oClkEHLmxhIdPd1IuwqwgFLtR/8rvj4CVpqRa8qOFnCGmBBN
	 ya6h279l3j38CfFb8YkA29w6T5iUx78MbNNfZR8DbYPhjZr43j/EBF5nI2Y5cl/WQX
	 MfrbhgrtlQk2UXWecyetPyYW9LqWGrqM1J59zFUsGbGyDIwDwzxGjmN1l1wP3y5MiW
	 jMm9ZRlEPmw0Pcrz0ZSR63ULeOFAja0Q6mHhT2hP29wEQx1mDvIs6MrYqIx3e3A8oZ
	 Ycstw4JMILyQ6jbLu0pw7KjSYhm16ZZlleANaBV10HfFD4S71Mc3lDJa+VTsC1QgP6
	 leQIRYV06GGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE252C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800302575.15594.14842569981623718143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884676de08898cd542244fe7630b2ad74981d8dc4e5061ad8db637d027c3c38b
Date: Sun, 05 Mar 2023 07:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678003025
