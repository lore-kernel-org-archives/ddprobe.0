Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F9F811
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140BC433C9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687756388;
	bh=09s/d7nA6QPyRVCVcEi1xqroHyFUU9BtrHvI7zKe9Ss=;
	h=To:Subject:From:Date:From;
	b=h5Xn2swGB7jadfLY3fOGOUnPkO44FSXeYtEgiHAKmZ2QN20CEJ/BQw3WifAOil6C7
	 fZGD1HCm67HI8TOGbNMZWWJgARmundrUVYYKiOy1r7coVX8g6jEYsw/wxeZFgzwXd3
	 zz1u5M8PbEgUAFr2gwPZDPSlhU+bW5EucWJ8r8ww24P2+TLlF6Jsl0selh0cbbFKzW
	 5kYq5qUshX1j3ZqhN+MidNFc39mBMPqKKgCajOuedr+HpwSYRfIRYqugYcrpK8czK2
	 Z7trWf0a6be9Cc1Oh16ngvUj/PbdQ5D15n8qpA0ZMpb7rUu1e1I04xfjXYWjGdc9XE
	 o3HYAeHt7ir1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF882EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775638870.22921.9269362975104631975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d8b5ca0131466fbe0efaf7cac5bb8ae5a93364ba6690da4537de7845186bc3
Date: Mon, 26 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687756388
