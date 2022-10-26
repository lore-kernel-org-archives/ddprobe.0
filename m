Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF729AD5D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69624C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666822253;
	bh=IdrA/2QkN6fO3/KUt1TzAULPDIerXDc65ihacTu+wl4=;
	h=To:Subject:From:Date:From;
	b=mcydtvXMPhp6wOwHtBGESwI6E0+oUlevAodmnu+ClgM2aLUiDVg4C/nnt5bd0bi5a
	 HCME58nhOwu1A0kznjZd7z7iyG1zMFkk4eAgF4dblb3XMGkZWM8ivEL6QltrPuk8kC
	 psVFwlKxYtS+wBOYHkb1AbxK1B1aiZZ04m/7vzQ+i32vp4Igsgiwa8W3s+FGeenAPc
	 jOw/CNTe5NmRFySd4t4inxlJgfUgI9WGmRRRLkt0Orf8QMMy7EjXp40ZVnHZ+l5Tdu
	 0lF/npFkqtEwIQm9hKfY8zwvcTXruXdUwf02i9wVIuvJg2oMy5oo4yXNGQFIrRTUUk
	 TyOs84MJMxSIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDF6C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682225331.19329.7541269639962885948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8529ba8ae816e16298dd2511ba4fda816bd2420d7dbee7f5223192d09a97155
Date: Wed, 26 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666822253
