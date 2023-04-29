Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6131FD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B977C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682781966;
	bh=1kfofi04uBIiojgnW2m7wbxRNcAyLyTqil1C/hMp3N8=;
	h=To:Subject:From:Date:From;
	b=k7rUTI6kP+RxmlcBPthgGhY3q/PJlI9tB3zABvcDqN8uwYmnGQSHd2oZrFNGkwRU5
	 Jadjl1g5N2BXQRWOOArr+MSm6jIeGC9/GJjIK97HBABv+VN0SSLd3wowSP5h0rivpp
	 3Dg5wWv/LMI/Nu5mr2axfmXuYEM1aMacfyekVZKSp0ALBLIQNsf9DMdFaYjEQ/0+ao
	 NzDLCkALFn88SKm8n6SYU/YYJXhuFP8UHwP/Wp97Zcm58Eznh98XXVY9fbw2KZPBDO
	 VzE6UkLIXYEfSdGvOtwpe8oC6KfyaNQaEyj/aPCs/Kptoia19Qu2D+QZ/3bNC0239K
	 7tLYMNFQbTNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5433C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168278196575.19450.9768379704093788162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1216d83b919282390042e2f234dbc94bdc482097d5166964e62383d16d5e9f1
Date: Sat, 29 Apr 2023 15:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682781965
