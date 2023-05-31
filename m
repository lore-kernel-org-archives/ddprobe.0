Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD7610F9
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A4CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685510045;
	bh=imHIVrmjvRQ0Zpq94dVFBhyx+zj1VszOCsZyjSytbhQ=;
	h=To:Subject:From:Date:From;
	b=iDrC4Cmw/U+BW/3Tdh/5Vs3A6YYuoqj7PimyxyC/5xQVwDMB8DDwUy0Bb8/C2rSzo
	 bcp/Xjzt8Xk11buNJG/L4zxuWbw0OnxHERy4I4iGNgRGAQVrBr7f0aJgf3vRtkyko2
	 FeZ4JrlfiF5+V9e+kjKCpTP41Uo3j5C/xcgoLGEgfN+dFsE+9GRM6SFbg58yRuKFAN
	 BUiCt52NfN9IOVLDnDSvGMVRC3Gy7v1CbXI5jv/wNM7strF0RGYndhs2HkCC/yOvvl
	 btVCQMpVfvy1sWZlvhZvTDgni7qdN4yYgZMrszay5Btg9wNt/256wSNbHvVk+T/ky7
	 oWn46UrTcG0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5A4C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551004574.8226.11944318099661891987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6951a5c28b775cc523be1ea76f20382b17e57d8b3b4c1718559824a62fa591a2
Date: Wed, 31 May 2023 05:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685510045
