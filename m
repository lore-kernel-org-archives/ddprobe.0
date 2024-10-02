Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ED923CE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727837754; cv=none; b=IFSfw+lnmgpqPbwS4D31HCMlhKrFtSAa0KwclyQOgE02GkRCoiyaFUuE+C8wbPVAzIPsuXDASqh/FEoOZwSAWNTs7nkGyXhxE/20a/z8DbAyKm607gAyB55rt1mUQ3r0pld+H8H5tsdCmN1L3/LJy5SMQ7qQ4ZBQmX/NF5GsY5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727837754; c=relaxed/simple;
	bh=3rppympL1go+G1bpEMiUwx9Tgd+NZdWabIhaOaQfbSI=;
	h=To:Subject:From:Message-Id:Date; b=FOKbwb4a1Mraxnv7C+ZE+V8UWaZXKLPc2rg2zM1zbTl4Q8h/gJrLly56lGP0dDtKMDVzbuZyuYvoTcbrQ6dul9rY0mHBRFn8CG66q3N/IZWcB7HaXM/2cKWTuIMPZtk7VbxpWeFtXPe33Ebp7gQASfN0YbcSdhYGAD4i9mn7k4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaAs/6m/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaAs/6m/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B5DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727837753;
	bh=3rppympL1go+G1bpEMiUwx9Tgd+NZdWabIhaOaQfbSI=;
	h=To:Subject:From:Date:From;
	b=qaAs/6m/zBDpjb/IDGlUt5fxFTrqrTCT9aHeMMjlhXYhYSaaWH8/e6X5tapmmnxhX
	 23kLQ60OlbWy+St35K/XCrOX6KFaq1VFbFtmVtt6/GCunTJfY8RCF9eK9NEv/yUND/
	 O69HMc5qsx8or/X7aYmWwIxvvTz6NUKStbWLKqaUkJOuqXEeEoWz4GAqSa73JRYkZ3
	 73EHMiO0Sz6lCwF7JdRPGvcOv1mzBXY1o9j+ja0bZrq3guxH3FqhQaICzP8ejPsGPY
	 vPn3wPnhGnCsxIIjJbufJHeHvcuMrdiB0tOH5BzQrNHgGI895IQxEUbEs56U1U+4An
	 6+U2qI4vIF+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDFDCF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783775358.2930.9711658060859630946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab0c2494bac13cc7e4776c2640317fc7119341b02a17011c472eac637350f85
Date: Wed, 02 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727837753
