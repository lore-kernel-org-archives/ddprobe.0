Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396BC17E4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737393354; cv=none; b=sd3nkCXcH7wJAYBDYglVWhfm3RtCLXbZHRT+/V/W6GOwLCFYyD5j4QOy5XLhBFi97TPtbVRg3+YrJh/V/c9Nj+s1ZCim8DY4wsOw6KsDJ78OoeF9Lv0gqT5B5udq7zr8aHnQD2iyyQEuNjUUQIykTqmzacQqkLYL9k5lmK2PSRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737393354; c=relaxed/simple;
	bh=YNClh4ViVAWWlQWAJw1/iCZ9kx4art2+iXOR7Na2G3s=;
	h=To:Subject:From:Message-Id:Date; b=sx0Ya9eOSaJE0Vtqhz9t2QF/qLqHc2Iu2IGDsdY7uLKATvfMwIPNKLTcKIA40x2/ZvoARG9dt+qCIofG6e2F3a/MhkZaIToh8PiG+JGMy5dgfM4FhnMHd3quQbr8qy/792IIrIBJstTPmIcPKquRYUWBDPguEl+DDD1LpM9DsJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B12jrZNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B12jrZNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE20C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737393353;
	bh=YNClh4ViVAWWlQWAJw1/iCZ9kx4art2+iXOR7Na2G3s=;
	h=To:Subject:From:Date:From;
	b=B12jrZNTf2brbYZRtXLSCA/kfl1J8f/atazlzBKKANmATAYukZ2OT0+HYTeICxE5R
	 XTY+LdmVaAYkE+NnyemDOHvd5ZfF01A2G6HXO3KR2T3xwXY1xmcTagvZXOppzU2aBP
	 DHsqVfnHFAbHU/9N6bYcXsPhuG8V4TJpAhIj1ndPznKg7ds5cogKdNWgTIgD7YQlST
	 OpYBdJQzCA8MHErO/6L4wsgP8P4hK7IAnK7dj4XoB+euONJlnjA9Y6U26bqCUfABR2
	 GBekCYZ8E6Q9ZoUTBw7orW6Gq6+g/yEc4VtOfxD/NC7Vlg226kHCE4WAg8UJlVVXYq
	 rzq3nwYNFFLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C624C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739335360.3484.4817962861833338231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7755292bf5b4c06c753a7e546169ad5a5e497999c0777269ba9d32a61896945
Date: Mon, 20 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737393353
