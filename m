Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1725205E31
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736518554; cv=none; b=O6BOz1pq2hgr4Br334v89Hs6/lZqgm2zKQpaoKrEGRUFTlfSEWsqAGN2FfGmgoTI9Hf5W0RSQ0XHz9FKtDG2IniqGd0tZEJae0rPLqZsAHQXAmfoRYfOD9LfN7qeMx1h3XRnbjesSEsu8sECqCoMCkI5mwuY2NpbtGOs8kN2ijY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736518554; c=relaxed/simple;
	bh=p6tYtVyw7yWhFh2fPGZRcVhD6AHs9/bXb4WNbB05UJs=;
	h=To:Subject:From:Message-Id:Date; b=psP2sBOyUkbQVUKkEf0DFXvfyaUHG6anrMpqkaI4AqQ9HQYpeA9zAKTxyXFFmp1CifqCpMa0RWvj3mdNKJVfdjRgsdNXBlaPn6RmlomkvFLNtE70INtmufNmRMO6G0mSxpDU8spFYLc0OpNGAlv8d8Xri8ZKPAtFyTnvJEfswRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq3Qo/9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq3Qo/9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE352C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736518553;
	bh=p6tYtVyw7yWhFh2fPGZRcVhD6AHs9/bXb4WNbB05UJs=;
	h=To:Subject:From:Date:From;
	b=Sq3Qo/9W4qY49qW0Ginxoov/1N0XuasRGRbC3CjxLWpsCdWzuOtJP2zC9W39UMY89
	 5aBoSMZXJGBwS40C+DnjmioPfRoG0RB2++TNhYlSZUXAGzkCAAR0PN7be33B7kZ7KR
	 SfXgPSkQpBh6HbCpPR1Isdt6pJw+Ko7ze6xOZC7/onSx+sooOKYt89x6BcYUzWhWJp
	 rpa6mxmwFQ4Xi0dNUDVGWN+7x8gf7D8r9zebqgrPAa/W94V+CKkJhBBLA4+jopaX70
	 0J7W5j5xp5f2Uk7vmNdVbrl42v38YYfzD9Yo1rXDUBZvf08eLrVh9EtcRIJnNlxkir
	 eYddR6mgFNhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3755E7719C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651855365.24609.11640919727761192800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439aad6f74c6afde67f355036091ebfeeee9d95034d78cea9c0fdd4a108e7543
Date: Fri, 10 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736518553
