Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A737B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C417C433B5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663887053;
	bh=foMFE0Em4OMUXXiSOCLZDRJSYiH3enEni32SXvUg90k=;
	h=To:Subject:From:Date:From;
	b=lAOS0xt/wFPZsMGuHISTNg8sucrVx+Yz7KFE/2l7xRqWDcxgfiNwxyAt/2ZGrEOCQ
	 TLAKCu7car7DjSTEp5iEqQl2FGE9sFpHFidEN4jKWkW/fdT+tWJWjpHbTQ/UVUjeg6
	 MAes2L9m8y2i+tpHnIAA/jd/shoiXV1LuL47YgOEqC0OdugO0KJ4kMgWTK2CROGzPr
	 /c3XTSUvgS+DQdiUnx3NUAtd7jp102N047L/RWDfOuNMT5ScQ81NYwpcRGqEr8hlOe
	 QCwNI+nO8Hoc/csfmK9P1hLz9PQFi/5gBCO0BLYAeCtmpQEdjTr18QuV48ljroDg6R
	 NaQCgZm4FexVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF6BC54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388705331.19837.18417834948671141633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88831ce67b44e90fe75ac7b9a0af38b313f71f36c1be35be08d304eeba90298
Date: Thu, 22 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663887053
