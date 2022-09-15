Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C424A1A
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE8FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663261853;
	bh=CcjFdDfaydP4M0RCDpsPGZ62sLHZGmPZ6eUNcMHJDHY=;
	h=To:Subject:From:Date:From;
	b=ueCzziXAzavls320PEa3nYFyKfV0dY2/3C2BRE1L16FX4QhRFVYSjeuk2c04ibaof
	 48x2WdMfEebzDsKqhg5BRY8wPnn00XBPy/JpsIPNCeAQIkM2i4Sb36p0YeoWFUxnC6
	 E0Y7gtNg1sxjMSkQvDCbuOmKgO3KJ/A7g4n7FWPVjq0QbPVcfvhntSUNVJ8q8O4QBD
	 oHXiDtsw353jB8f2r0Ym8WVk4OqiYgSx+8GVHIslyxY5+wLuDFWn/IWVwY4WW7QBDF
	 LZtBkSW+t26sxkv5rUqWofiYmPBYkP7kMiI0cOjVNCwbMDi04SQQHHr8bnvfdVUkZZ
	 iVQAJy+Ny3coA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A87C6FA86
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166326185333.13671.11540583917827022663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76216e6b2236492172b5bbfeb2606a63a3aa3a516d7e1e6ab5ff01df2164684
Date: Thu, 15 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663261853
