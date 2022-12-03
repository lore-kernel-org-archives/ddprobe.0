Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC32C7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7016FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670073654;
	bh=n7sNe+s32YiXK5jSGs7zg2lvCys+yHljQnfXlyX3MYg=;
	h=To:Subject:From:Date:From;
	b=NFMNjOq2zEzdSdFkCCbr7SJ7lmzOgeWwHfbRHQ5IBBzEeyCmpnwJif2XA6mMkrvV0
	 2a7w1tS3L+bvnzVNFMiU+rafZxhUUOE+dguAZWqqR28Q1k6QTuqSmvmOhVPGproF4s
	 HvuyfsFTgjgD2+oBluzWmxnIWTexXBHxapLvOsih0WfM/rWJc1Omcpcy/zHzBcz+/I
	 VKzROeX44jpN21B5jCPi/TzRJrQRNLagwIwwr5ilNyB5KGPsMKFEmenzfWxo0iiauk
	 9kWicpkGl6CKamhgSki/mvLU1vCgCxrGPzIpz4XRzQ8Dt4xKuoK8+sXRva8nwhDEj7
	 s3aEF8Q9qfRdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549E9C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007365433.24949.2444994689199911427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c48aa3644a7761f63606c535328969f2e332159e1c79c11295287e7b631ecf
Date: Sat, 03 Dec 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670073654
