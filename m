Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1107C38FF13
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768311834; cv=none; b=WK6miDQZCen2HwKRxcVzwP4e+tx+tZbHicg5P/uhN5B4J1jG3a+uMSZbNQkuS4lrkCqwAFfRSuVMSEGH2H3uNbRQ40ogDQvNZg2pMvacqDcrXwQsSULz5F/NYvgkYRJpQvuQIEu9x6xSQNZzZISdyOx6YxgGGfq+qUEWubU/GYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768311834; c=relaxed/simple;
	bh=k+6c9WBQ7A4TpkRhJbD+iRzaSDobf2owqh55vjYs/cs=;
	h=To:Subject:From:Message-Id:Date; b=MNsECvv53j33WvAwq8eZdZq37CHSRxg6MK2D1zwJVpcW3T6y4yVHjm4/Ztu2YFKKiFLRV9RSjMTc01oAURO1x5bnTlsaxZLt65/eEVX+l+G2SRidp+7/iJrSjsd7bCvtA9rhaKpnnYlXvnoJSdXBwq/cM/fdK48Ts+gNKdygjlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAYI9/Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAYI9/Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F13AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768311833;
	bh=k+6c9WBQ7A4TpkRhJbD+iRzaSDobf2owqh55vjYs/cs=;
	h=To:Subject:From:Date:From;
	b=cAYI9/DiWxmKlEG9pQVltt3YVH8Fz40BaywQw+37/Kovwd+fgpm09Iww9xvs2fVTx
	 XEE3tg3Wuc0tG+J2eYEO8VNJlgVEfYddBQE3ZqM3rnba1MTqJRrXg7w1NZSfXIG9ne
	 IVivsaBpWlH1Gt4b4cXPS3x009XN2Ngfc5n7VGR5UBYadwYFdl+8+tL5Tw0RN21LiI
	 jePhzChsVX0+yqJnzlYfs9vmL+KZFNy5ETFyVawwVcihBs1JJdwMreUz8JXBzSk1XT
	 spDyeMaoWfpbNY+8DL5KfNILMM9OFO1ovIMgNXhaAXJ+Jm+RRQPveK3HeVQ3MA1J0t
	 p+nEklcaKeIJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055AD2D103
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831183358.15499.1730471403966518631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cfd834573735c4a76ce866fbf0d92943fc51978c86aaf1ed92ae95a6056806
Date: Tue, 13 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768311833
