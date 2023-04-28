Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB0728ED
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 10:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF0AC4339B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 10:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682676785;
	bh=MX1K9krmZMKJqTm1lKk+wL6vqzvc1Pc3MFLcf9bZX5U=;
	h=To:Subject:From:Date:From;
	b=gNKeEIG7dXGY2Pta/sRrhlVX5jUJyA7uq8RKeSbwQv/pjxjkVvHIKhAb8+8vdBjmL
	 g9eD0aTMv9aO6I451Jnyoq3ZH1cuq3DbVfPhd3OPG8ajH7DCM5QifdhLsxQrVEYsRG
	 +LDXCLeVNQkWrPzpAOIHG5pKFdoroKnuma9+DzbLj9GNlh9/yk1VqNzbdy4tK5a7vc
	 HHyDfXM8a+0W57rL2xE8SX1Lk6FrZRQp3nvVS+x4UvHWydbdHD/Krggq5GM6R8EEtC
	 GmrX+jyVMsmWEicGzdIR6r6NUJE07KP3H7VimHKlwH7L3BA9kayG7FHx7UHvPLbV0q
	 1Ixq5OUin6hpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAE5C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 10:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168267678576.24086.8885292684046768815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c0ee37f8c9cfcadfd1a12124038e4e9f4e05fa9c40b8460e855a6f0fadea8a
Date: Fri, 28 Apr 2023 10:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682676785
