Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EFE35957
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763904714; cv=none; b=SWLO3EauAqDVnqYd0jtZ/8BO73To0yD5pa3xM9GeXdywPhAGxbZmOyr8ofXiII1y89JG/NF062RDaV1opZwBVaLQA3NfDdIhzOlv15fzNWl6F+KG4ATCYvOfjsNSQVmQkuXhDsVWQjcZhraKqHWgxT3FYTQir4raAQG5W/Sws9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763904714; c=relaxed/simple;
	bh=iOfFuGEqtb0dRGyT6RFXHl1S5LX7duoj1v6QGPtE11k=;
	h=To:Subject:From:Message-Id:Date; b=Iu1UxOUekaRYU3wNAHTWnzzKGCnxBk8ge13ZRamorDDjPFlS7cY4kAqupGDaSZ0MkoEzjP/EZ9HFxBRH4trG/3bdZaj0rXWrHwqOU/rKd7suR/U5VjZzR86daMGXINgmczTvTLa/wslRmdI3WZeflTBFCcchd0rAXXUBjJmxG7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJgxJR+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJgxJR+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1BAC116D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763904713;
	bh=iOfFuGEqtb0dRGyT6RFXHl1S5LX7duoj1v6QGPtE11k=;
	h=To:Subject:From:Date:From;
	b=uJgxJR+dFYnn2NQW1qqZTKbm86iRmrDyz73ZmBuwG7jQ5QaEPqhXqHno6JHykgD4k
	 C/CgrJpOlLBqaNhKAg3U3/X+fdHGWuU3Q8+aaaGHecDWEtzOr9DNS8yfvC61Dylh1I
	 jkYNHYCt05fmYScRF2y/gmOjFNmP6bMDDkCjej06A4wgIQD5SQoROFcjr2E+9IPKMI
	 eZiRDh8by7AYdwRnGeUtNs3cg4U/u9WDXEOMYLJapnppFUiaJnfA6IM83kUj9kNDFb
	 I3kArhwgQ1FEDukxbXBxSz2QbLmJNWmGf7rFKgbA9p8MNtSocCnQ/kztqNta7QXRtk
	 0h3ZqXG0ZMF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D5CCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390471360.13267.16715799797042359426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab91759e53150aeee7466713bf690aa65f3b0a122b928522805f1613cd66a72c
Date: Sun, 23 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763904713
