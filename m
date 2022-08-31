Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE25635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E60CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661917253;
	bh=uMqs5RV6/AcViQpMM37FBk9eGeo/l+picETOTxX3F9Q=;
	h=To:Subject:From:Date:From;
	b=AdlrfggvWbGzmnkgny66TfxzsIBUm/kq//C5cxf9NW4/dmxinBm+uyLh9yzOzNaeI
	 ranlhmfo4fYvA95f1Kr1LU80wK3fBbpRxfDQk8rGPuFQWI8CMSmjXji24Hu0gtT6SZ
	 Dt9QaHRI/1IuHFEtoZpsfZsSSjVS0Ha2aww+9am62kS1sTQSjwTYYUTVG/CiUnOZMV
	 uOALhFCyN3S+eFB5ST9AfcimU/6pARwXax0xZdgcdEWpCIOu/iO2aC352tV/YT5V90
	 tWfHlBOX2rK90urN1nZvv95v8yonfIW5INlQAy36JDpS42SDueA1EOXrWvj5NdBuDU
	 x9iM9jt2yWR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85EA1ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191725353.15298.10529610553390038921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69940d571a50bb09a5b47a60120ce3b770005ecadd45d807ec79db13e011ecd9
Date: Wed, 31 Aug 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661917253
