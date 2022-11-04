Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5799A47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8295FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667523654;
	bh=cpuXiASVwV1XMaxaRqvNwyqaoDWBOfBfGWThdD1QNrQ=;
	h=To:Subject:From:Date:From;
	b=qUs0LjoULcmgNCF3bw1R0D+WlcfJuahpoJfLeAcvQHFv7SOps6GTqsCZHxPlz+vKa
	 WIg7oxPKWlbh7BtaK8M29VWTJbJUHuCl4Wb9n8zdXv4spDfNmL3VpWPaRNjxRtAsN2
	 ODYzbDuT/Dh3qZIyzEqX3bbcGkz4t+xci13ZkOdwE6oqMbNrzuvUQEr6fImce9ml2x
	 7jD5OwYw302xsLfThheDsrk/UQAy88WaPEfLNuvEradYRqNgRgv05oR3n8csFw7VmD
	 Uj65Zxy8iSkbVlKx8P+sschGDuEKNzv76nzlBUPQssk+h+GndKanRp5pr2Rwm9KdKI
	 fZLrUZ+mKrlFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64ED2C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752365439.32633.17035299482544297547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32535dea655507034f3dc8ed637ab82fb34bff316203a05e3b6367b640108fc4
Date: Fri, 04 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667523654
