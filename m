Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329717E9
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721790954; cv=none; b=nDF6JBCYooLBPK8R9WMzumQfiy8dB0eur1qz0TplVUOkxj4F4Ngvx6LfI1mZIABKHgST5JxQkBi0zke1Dif/O9LGRYSm4wlKKhoFS43G7CzWq4+w3RJ2gm49wGDyCOf/igN+1WcXBbyD2jnj4Wg9CEx6txd05OChyWdJSs1p5wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721790954; c=relaxed/simple;
	bh=UvWL5k0mjNlC8W+I5zmG8cA6jANL4nypTzwBv6rb/NM=;
	h=To:Subject:From:Message-Id:Date; b=PZiehC7e4Hfm4ifMFST2yNtQ7rSnxAyr7KyPgStwJsmY/JqiaAA0t8mjw5YzIlYT53NGoTapWRdNuXVOZVur98l1K7QyOirCAu+26C7GXlN2hh8t57+M6Rp0ZNsnHHNPyFMgm03vHVrsclm5/3juv8ddOPXXmCz4Vkq+KJk9EPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSoW4c0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSoW4c0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32CDC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721790953;
	bh=UvWL5k0mjNlC8W+I5zmG8cA6jANL4nypTzwBv6rb/NM=;
	h=To:Subject:From:Date:From;
	b=RSoW4c0YwO04QmLSFK0BcGM6b1W9YdPSmcLxptwft1jps4fRUyCwqoikIlWhSxgVE
	 dmasOwYx3HoSHNtxDSEWKifLIaby/ew0ENg0ZL6l1BP/oAxhA5Z+KiKM5mytc3e1+z
	 Umi2AKDzaMr0HayikRdhCh8E0ILgPgJo7RiREQyJKb170H/iHmR9XMV+ey16aF7LHt
	 tEKNEfeQlegDsair4YtbsCHYktXHZzOkQrytkumMN+mCIs6n9PaGyvJN2dce1v4WcD
	 chi02zDc5EO+MHwbJgh1FaarfrPMQ8ARpqAPM3nD5A7ibLw11+GJH+aEN1JAR0Q+HS
	 b9wWR+tOkTqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3FDC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179095359.29350.919341303713230734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfd1b94949612428da0361a3b21238b06db55bcbc27226fe7420e319b769e36
Date: Wed, 24 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721790953
