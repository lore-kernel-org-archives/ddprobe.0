Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE67F2F55
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E19C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672441887;
	bh=HgkhV0lll/tVSPIMkcOZrfOczb1p7cJFu3Y3Dutm29w=;
	h=To:Subject:From:Date:From;
	b=J2npldQVMXkjembLwo6huJwmsn2pi8VRCs7ZaHu8kBtFykewHA60VuJsZ4G3QOF2e
	 y8TZ3lMbo4+X8Uzw5oiTIrjW1ZLxTxpa4QvLfiRlmPPZB6Twkppg8HO9pt4NliAlqJ
	 iEun8uWMMW/2s0mb8V8rhjLIOZ1dQYXha2YSU9jqMn29zqPApD9xWfp8TkMqbpL4na
	 bNZ9LgaM3hvhJowXOOjTjgBxCbCa8U2kpEaZRjQWj4wpm/zypuQqYqVSf8kH6TPzVu
	 quz9EjDkKqDEg2X29X7A9vkXBWuQ3WhS7EVaIMG3YWv0kCqy7cUs2Re5wO+lbMdT7H
	 O5yKwLcMCk7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DEDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244188738.9869.13271909600274945397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82af084a7ec3a51f4836f7683562d617d2b3a17b8b527a4d9e8a30482f96ccc3
Date: Fri, 30 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672441887
