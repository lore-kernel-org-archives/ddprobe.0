Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7753C3C10
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785316834; cv=none; b=jqoXQm3L9xEQAbYYKdanZKzMokXqy7P86Lr/XQf04h+8Yimqm9AaWml/8FppUHwnBSeqvh4YoiNzI2su5/2i7jimS/zKhzf2MpCUWxXffG0xM8OqKmAQU5FsxhIPQo/Klh3BaodhCMsBvp5+/Pi9favKR4xItkD0HZTF7NjUb3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785316834; c=relaxed/simple;
	bh=K57xpNSAS1ejATq4Kj2Ww7dX5heTRo/G7czX5O6x+F8=;
	h=To:Subject:From:Message-Id:Date; b=BRPdMZL28e/mmO18KEdIJDDs0ZWX8UnDS67CfkpntfQTuo0O7QmajuZWs4QJNeHTYIKfC0duNTeOBeeLHJPlMS2/oI2Cqdjf+2B4E4h0baLAOfr5DJ0KnPJ5DlB4CejejIn/6trQMPBuD7WA1siMEQ6rHXJLfHaKSUlojo+5+18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0MRh2aE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0MRh2aE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5DEC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785316833;
	bh=K57xpNSAS1ejATq4Kj2Ww7dX5heTRo/G7czX5O6x+F8=;
	h=To:Subject:From:Date:From;
	b=i0MRh2aElynlWd7MwKyJnm6EvlU+EASHjSZlhXDEq37CPlNQtZvkTf/NhIlRbCq3y
	 EBdtFL9+FoMKwA2fbR1hRyKNSTqw8lGLAKPiKPKzXvoVJkx03C/g8IMT4uAUx0DMqm
	 /l56ESdDEjZd5wxcCmnN0/vd1ggwCGYWPbeXSgEYC/HanQgfyiy24J9jfqSXB4fiSX
	 QoRkZcGHw2vgDZaBxekNlm4mtFGqN4peSauEPSfv+7/yq7MYBhk7xvE7qPTY4poqyV
	 yiVsH8eyzVkkeSW6aBcsmiRYq9vqrty6G7mUzsh8oY1RPO4guj7WGES1KNdk3MCvjc
	 s8slpuiPTyRHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B0C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531683368.28646.15849780968736304462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e241983d01161e92772a95c580bd6637de2e02727b1ffe33c9ed92d59f962c
Date: Wed, 29 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785316833
