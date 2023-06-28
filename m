Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A772107
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9B3C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687929788;
	bh=ZOELv5ZBbOK2eXQSu85+8O7IP2VqHZwdB4L7zl2FcaQ=;
	h=To:Subject:From:Date:From;
	b=jUDHYgZ6zEMksQalOeKhR4nd4cDmofOWL22xtx3/hzIm02vqMZYBrIgNo5ay568Ys
	 FQbKFfMx7pfFzKPFp+XOo1wdgn11qbCarDTby0K+nmcD1yT/meGL47MVQAg4HLqo3H
	 U/2lzX50DVa7mr5OB7gBYTFQIHCeJ7rWGz25jEEGL9Zz0MLP5LJZYR+Sq0i2IrzvpT
	 YxC8KCtIoC3TvKVmdTd1ZhyrioVIXbfyL/d65k8r3nuHbjlL2KVV1Rg6R8EJB8LkKR
	 A7uyY4EPF4m3xaZuwYQRcxy6U5BZYIX63vldFoIq4ISNUXDvgbNaH9kTb5JE8Un5CO
	 +J63+pA8rKgWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BC4EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792978875.8857.4207260637609496236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e809c11e27b3d6d3a7ad9b35c439fd2cbcd233d05b4e3532d8dad6c291147955
Date: Wed, 28 Jun 2023 05:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687929788
