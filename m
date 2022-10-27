Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2B21852
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C62CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666843854;
	bh=/gpQexRGncXqExvlk1KEiSB5ebxSjFDJSEMqLOr40Dk=;
	h=To:Subject:From:Date:From;
	b=B1uK5oO/H2S6R69CE6y5+X5EebqbDT24hH8i2VqJBcIJGNVQDuj9ti1vKAn9Egyb4
	 TqP43H3O8v1peg2eDi92iPOpA+hRVNUOgK0tib+rQGJbM1mcjmW5MtV52+kAUEcpTM
	 cfkMHcifaXAcCGUN8T9ru2+Oz4bXuVYQLjGzXLIA6xBEdnS+fxWL3Gso7uGRZFO65m
	 g6DTdom55PX5EfagaXV4WwuBRRfee0b5TIP8LAkNZQ0km5hCOiCVQ702aM1arV7TRJ
	 Ow0DFp4o20jVm80IA+JzRJ8WEOoH9RP2Z/3wnLeR9Bq98vAcwaVoZ7eTkHAQQVhnyI
	 jIRQnMFIeclEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F260C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684385436.19234.8069223467423125912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d563900318d3869cf66e76cb8d34cfd66ece85034223ead5985fed39a9581737
Date: Thu, 27 Oct 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666843854
