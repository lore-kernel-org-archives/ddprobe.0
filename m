Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEB0110F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA151C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674729785;
	bh=bocrBjWYdVPnaFv7XUNmFEH2h7AwB+Os7n1eNFo1858=;
	h=To:Subject:From:Date:From;
	b=XPLj/x6G4H8z5Vtd6+ndlsFTU6YWIQLYbHtFH7E/jKsjdmMPVeawrvbE6pQTeTYNi
	 TZ4XP1cEQjIPh0SMabG72Dwu86eZv/RwKYZCjQQxzMUlaAkdlmXlH5aybw4CJnNaDZ
	 4AXh8Qk3USNefRq/zcbqHLdCcjuiUHwqoqshQDsrrxYjfoeektlfrrjTnKV/rBNRm1
	 BPerg7oTposQMwU9sGkElpXy/joufaqs9n17g8Yjbl6yEXLXepwTFBq3RFFECP45I4
	 ezoh8c+S3Is8+eXxAX13qBwko7yb40w5zhcpc4h53YK+NsH6VPz8GBlnFJeABjzuEa
	 91CeOA+YnU6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3CFC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167472978577.28783.9532308606720880890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be94dd51445f0322ae0e72b6ac9c1bd5d53c1e4d3b0e267bef17c7cfb95bdd4a
Date: Thu, 26 Jan 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674729785
