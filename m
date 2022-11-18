Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8E7259D
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC88C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668760854;
	bh=/JeMYSAYF++uyNeUtZkr8BW4NvKWE35jv/N7KQi4HbY=;
	h=To:Subject:From:Date:From;
	b=snkl77mWbx8C7GmZ0jCvU4fm24rymOhVKuRgAacNi05GGAti12ghQ+4qVu7bi8UPy
	 nyfE0Pyt6Ojy6aw4UQVnQSl2B/NFGWDYCQuT0WHgL+AAib9EmC6kJ6OtFDvKcicQnT
	 r1HCRkLnoLgtRUzgR9S5DB4IUNvnLj4xE1oJwPL7C/SpELKOJtcla+LcG28UI832lB
	 KFp2d8naQ3+ffsv2pr0pOH6WJvc1IsCsGANsDH2+aRYSOt4d12Tz4Izo8ea6UcpBjO
	 W7uAyFen5KSMIRPm1JyJiwfpVXVJVt/gd61v/+3gh0bHyazxGTxBdwVnUr0EMsFtOi
	 S2crdRBZAjaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57664C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876085434.14803.14725953784493163138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9e997c69bc4746f471ec002cb0ac3bf5333274ed13cb5e6a00b9acec4508ed
Date: Fri, 18 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668760854
