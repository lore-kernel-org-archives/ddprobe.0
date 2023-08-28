Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692F7ED
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 05:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFCEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 05:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693202048;
	bh=IOnfUw8q3/0ynRDBCytc5qoqvVgqnTbHR81CU0y5Hak=;
	h=To:Subject:From:Date:From;
	b=p0w4KAX7YGSIqLQiCpzWGMQleGXEft6qM1gzZxJ1f9Mjmalh2TpJHtpbMrvXPmXEG
	 sb48XmKl6pM2DrIrkya5E/CW685zLgDpi23Au3OaQRTcuV0MaCXOTFs9raDlPTnwv4
	 NPjCiteM46iY8CUA5VTce0N4CsTY/IcByCmRbXonQ14mIGblhnS3aNXeXFm+DC58Fk
	 W8jdGS/pQXYyOXEGadaj4/nZWvnQr1i7pMbpVmhgz3EX2u3qzTdpqKiDb6lqc9yL6X
	 j8d/0KhX46sZPYA1Da56OVSMQFnUFDKxVsCpbF07WLKnAXiRrgVWlfkmJmDSsBCpWZ
	 M5GSDwaCcxcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE75C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 05:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169320204867.13835.8982447250651538972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a420d7a82121cde5cafc8747927c7bbd9b58cf0d5b0a88f99ae2b11e6d145a4c
Date: Mon, 28 Aug 2023 05:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693202048
