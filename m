Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1499428BAA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755338394; cv=none; b=ubBeN8j6c8YTqt2vIBrsPS1w7jT5v0aRT6KTIRHbTwkRlesAB3q7XOwmox+c4cpMKXHa4hcXQfxkdjONETmBHBmbLa1Pe/s+aRpmPpA7Tmy+fzwIuWZM/vG2q7l9hbjD6O7d6qgXCKOXn8jUTiE2Nvka6a3eY+VGdH/RjLohNyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755338394; c=relaxed/simple;
	bh=QOB+arycFXlKvd4OlA4bZks+iPvjZewEh5RaTYx2xwE=;
	h=To:Subject:From:Message-Id:Date; b=AQutmdllVHexiyNq8neIZSh9mluyDPQcoS9WlBMSBPc9GMtMnR65s/Ga+fgKY/zGBrNYLKbqT/Ync6epTP6EEAVW6Om4/j78LG2b8X8LSSEwNp+HCiLHbQ8JVhIWMEduBYYIP0yQHhvjWf4pBkaG8kLELRIUOXItz8ooBf7kuTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6b0nWXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6b0nWXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755338393;
	bh=QOB+arycFXlKvd4OlA4bZks+iPvjZewEh5RaTYx2xwE=;
	h=To:Subject:From:Date:From;
	b=C6b0nWXsIa6NnFe2Vc4pZbMtPbqcjm9jlheNrvZTfrW5Tf0NuR5aWH1PjvMh5Un4E
	 OP9TO2kwhRj067qoDqQjbnGCWdhRYviWQ/VVKcnUXjOgbToPCTSpL9S1I/r9QlUyrS
	 tgjRWmF5yicJNWN3Y/G+8TkSHdxJjXAkMgovCUL2AIhSxMz+4dleaOg6qT9R6GzkOS
	 20OWRmqkNODjXU4DALqX7kw8b4arTU1/ETtJgtmUnEKHtZYHDJtectrZJ253tFvDli
	 X6QSfefNlc7zvzAiB3X7pcMQm/hLib0Pfa1HVA2imP5FtWUtUHAXqer8QRddgfqIZV
	 Bm3RdAuf12Ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6ACA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533839357.11779.14950010348961518442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad53c0e9343e996162c13cddb080466f3b3e706cd4a8864daf68c541227d87f
Date: Sat, 16 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755338393
