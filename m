Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5CEA20
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 034D3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682572266;
	bh=Cyc/BnkKhIFwWALrxN442ZVZ84HJuuU81f5FPt0TnEo=;
	h=To:Subject:From:Date:From;
	b=GkWA7RuwtebNefZfmrYrSkgtCYZ5OnQAzc3lDjS4JXx0UUtvHXeyEcn5H6Gr+MDzE
	 CzVAieMOMdEdHWNOQtnu+MFe0w2M6q4czOrNAnFGpEnNuP0P/CxyWKtrwYtvZ9DAob
	 OV5zGOsgYZolQsTOAg9ULhEUuCTY1r3Zd07vEHWJhOixAsmjuIMx9ZpqzXsCDJXF17
	 fR4KoE756udJywlcZlM4zWtuVu7aAl7IXYnxs2kfnVBKWoSuOx+co8yT4hEiS53hJM
	 U86EoZb5lfXINHlwiZ/tKy1AaAK2mJyOIPdspkxIizSCkErkNOSEQdVqVGsDkj5Eem
	 ETtBfVgHNfp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB33C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168257226578.10505.12967174936228620012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684fd3b7b100defba4ecd9be62d4b10e5354a34f2fb5a7353227cc17862b5abd
Date: Thu, 27 Apr 2023 05:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682572265
