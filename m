Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0914A83CBB
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709812697; cv=none; b=o6fjnuL0gTnuDQCvEJ+p4ilEEF8w4DtBvynDU1k2Ul34rF4fBt3WZv9GsVoscAWwEUdVl08r6iJRM8evSW6gxuC7gOf2KDAJWfZeHU5X7Jepop1zl9TjcPNW9Lw6y9yPuVlCSK8bv6pLluaZ7cM6e6o6c6Lh3+CA0a5yqClgH+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709812697; c=relaxed/simple;
	bh=EbPYIH5n2PTvprhnIEzzNqr22GOidbsClWKfQciBldk=;
	h=To:Subject:From:Message-Id:Date; b=G8QdvvFreFx+kw3Ru2a3JNsBRxxogG4tmU/Yc7vJHmX9kx7nJ+xPByzSEDRlhcN5Jqc4H2OYiCy/yJYaYWPZvGFBz7nFFWKufIES6FKs3t6TGk6Ad8H+3AZQor7xgHrGyIqGFxyjDy3tkfyqIUjPkxmAjPquA9agT9JygpqSy+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK5GsWXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK5GsWXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CDAC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709812696;
	bh=EbPYIH5n2PTvprhnIEzzNqr22GOidbsClWKfQciBldk=;
	h=To:Subject:From:Date:From;
	b=BK5GsWXEENJanN0nHOnujE5dmypvqTDPcy+upPBJThg2qlArzVCF3ylP6MOWBAjue
	 f4qddJBuQS7BBnTZoOhHmB+t6x7CT5+VscvfER0BNnvQa1ZuGBLxRIAjHcRSKpFoQl
	 X9MJAEag74+oDHct4PFoKRb5crEk54boNrd/zdGEk7KzLzICw5wJ20XM5av4TFWtqP
	 gPrTCxXcQzQOnPLAx+dmcvqTgGnonXpbZAWU0/BTXIV48S9hd9TIhRIVh0KaMtxk7k
	 no0jThpaDHEh1jxT7joz4+31pWnSQ1t/sAWLXvnVKH6heS6iUQsBbG/nMGfSgTrJuv
	 2DcEkEdQ5DIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDF0C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981269637.19740.10525060113461620817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3d7d3f654fefa3fd72678da839f3923469d303c77f763b0afe2f88e101ceff
Date: Thu, 07 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709812696
