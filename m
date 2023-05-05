Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40842ED1
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C2AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683270425;
	bh=6OyU53+NWDla0AluFvrG9VXHrhlD1XWTF+TnSVrMfhs=;
	h=To:Subject:From:Date:From;
	b=fpX5Mm1KsP+EnJxRYWTNxvQYe8O2P9o758pWgqTDYXT2OBCpirmNHlmrj/ynOTcDt
	 cnOYH8bGcWk+U8UlXo/QubZZnWMnLa/5WKyIfHKACJFJE51uGaRW5fMokzJs8Uh+R+
	 2Ej/hqH04WzlSuIR587E2boyYCRFkzwOR/kkYA8zgXX4zMPH6gNasmE741DXvIldg2
	 o0qtuvXGewaruGvkRJsoyjCul7noPVjBBTgBKeFPaNp/vOv9QyJ+LD/aiyPdYs5cDT
	 SCOIkEtpvccEQ3I6BANaXgc61BIzN89KN8PbAsXSTigc6U9EmYe/0x0CE3Cgsf54g6
	 z68EQ/zIcz4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB088C77B7D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 07:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168327042575.10532.7103289801017125974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a871d8a1cd9653edc8d6573084de2f52f6494e71d651149fdde063a08cf8f5
Date: Fri, 05 May 2023 07:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683270425
