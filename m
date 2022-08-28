Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD3B17D1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B4FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661667052;
	bh=62YTBT+J9kDRxn0JKg+HMzIj3Tfql1uJyH0PfW6QpZE=;
	h=To:Subject:From:Date:From;
	b=b0Hq8RHyqsI3VtdTN/JXpUSOYky3kKAfVxAlKhkqUZ6BVf9lbZ7WpF1ua+QQ9RvO8
	 c2jZo0UIJ8/fvRy6yjp2Dc+RHvbNW/R25uUHWffHlgrZXsxAesgQH5ZWS1SoelWaDE
	 f6vyKXEwtenR70KKzjhRMvLnJlKF1EzTwBJ1v658/fgAtyDaLb27L5ywf01PgQ7zNL
	 NdKJBhWP1C97X9UZba5k1V+AWm4iQxSPCKLu0PQnAZZtFIcKltVp5USGs5uT4ZbOQr
	 4E5/lBOZRtzcJ7GkREXdKo84jrsXy+tuVfxb8yWKvjJ7BlHdpXVU5/BiDXzqdSy7oY
	 qj8fREZ97VRfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A88EC0502E
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166705236.22746.17254807928903464253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f047fd4da1d53ca1d0d06a095070a3fb006480345413dcee3c18b75021442e43
Date: Sun, 28 Aug 2022 06:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661667052
