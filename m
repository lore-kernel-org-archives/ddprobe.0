Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F1A18E24
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IE5yhnHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5F5C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701850696;
	bh=TkZBuZltRAh5BqDHwCiWxQSRlicg3luuCTNr2yS070U=;
	h=To:Subject:From:Date:From;
	b=IE5yhnHv/Cu1Zz1FZ8vOA8+vXKziBujE3pQICjl5E7TQZ4jQT0MtHmn5RvIk0IiJm
	 Q04C7ydiXB3WNxs3CBCGcbfaDG4t40fpkwe/VHlaQXSxysIe8R7lhum/j/SDsSPyd4
	 UpUN2R/0/8zuq3O/hn3lagV12oewrjon6YAjiggxzeES6A66BIGU4olvg6N2i9FC94
	 bfHcBTPgFkmRz2RK6cCGBuhvyvwW+r7zq/6k9lDfWJVoWTAf4G9luKjU5/dLJDt53W
	 bnPiWybF8zcqNbyHtHhlKhRMKFw4QDSjA41+gsCEDYWcerKEDxizT2HF/9cKDG8MFt
	 TzwYhVSKfQQCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F88FC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170185069638.3363.2791318396799894659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4c89aa5aecb41828ed75335b8175c0d93e2fbc4212a37fac33d6c36417ac51
Date: Wed, 06 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701850696
