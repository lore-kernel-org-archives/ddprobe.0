Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2E315A4
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E924C433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665469853;
	bh=rWRweTiZDLovIYR7tHYlEgLvmaFxPQL3WcfO2yylIWM=;
	h=To:Subject:From:Date:From;
	b=RQWuSNm5Nip7yQQYEc1Yxq4xZE7H1fF9gl7h32fV/1g72NkJ35ZyfKDFOws3kRWQF
	 cDJqY/DorNnUhfMx9wwvMt7rJvK/hUpYS4oQ0xA+esGlI5kzCKV6gGkoXrLcF2/ETE
	 kdwWvRIHZL+kkWT3NtxmkgZT7cSjNz2qDN/VR2XmUbAzkhcTRqBioxajCFCDXTaVV0
	 9ivMB8OhKodCNEA0hzaowJlOn8k5a037+OBeeTc4BIlMGF11T7WkuXM8uZyurjs/M0
	 n5I6HbLt0hF9Cb4Yvwa64aLcV4KpkKP7FwYUNK9aKCAL8ZWXmiQlnrX8hUUqQYATCE
	 jLtkMMkS97JFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C2CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546985333.8983.14832135530544676172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe7fa76e610c6f6477443562ca2c67062b50eab4dc0d3cb4997b3b32972278b
Date: Tue, 11 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665469853
