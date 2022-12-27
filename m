Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E588F3239
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876B3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672168287;
	bh=zIkBnMHk9myNlQ2BnQoQu6mNNoQRR5ksBuXwsHt4/bU=;
	h=To:Subject:From:Date:From;
	b=iPBanHGMlkcOZqW1giqGyVBaDIXi/XMwi9fmnK+eg/OhI79HCIJqKv+PzkBeYEjx/
	 mu2xyqTtioljTDz1iGjXIeFBQWpDLkc3qcznTMUqyyZ5VB7hwvd0txXcQi8Q0vU0rd
	 E+X4yT+OpQZN1gfDpbAAGdqD85t3PCSBhxpkEffRobb+ZmoYLCH5EqUlplhMs5nQVs
	 OgyAj4ild4D7zmvwn7/AP0k/t5hHqdGZcSW545rlpaLTp4qQQEPJ3DUY/LV+mgIzy5
	 /Zp5h7tzRPisme5PB58V+l9OM+QrIZXvNB/VDKKnGymxjwWUsFAXTN/A1WWam8fFKt
	 mlCKkY9Ynmujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C90AC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216828742.16595.9047090290398868919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ac9bebc1765ea8ed9d90d9926de6f084ca6316176254188c57eb933b1e43c0
Date: Tue, 27 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672168287
