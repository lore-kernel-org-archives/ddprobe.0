Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67275CA6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB0BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662570653;
	bh=7RwrBZSbozEmeW1HNF0Dh47qc3W2BjH0KSPb/8Cnn2w=;
	h=To:Subject:From:Date:From;
	b=XzPIok6cXVOCZh7/vO3xyNpykADjy8e9RwtnQGT/UxwlTFiWM3oQmkelVrZMHPQqS
	 lDy4UiBFjvZ6+eioHnaCpsLlfZLj4NGGxSBksPVIinkL/TM/yo+rHISplgOIqnnGEN
	 3QeBkuFh9ZOaSPQTrpzb66EBVUTDf+lb0svpdqzTGaQh7I559COQfqAcfZe9PDZGc0
	 kL91cLgtnbBIvSGfieAz6TZhyviglyXAw9G3zCPyhxS7InQYflsEDAw63wyUMEJ8oK
	 6mLctr1eaxmDBlTC05VSmy73KWtiLW23Yzrbwz9cKyZwFYIx2YSKQbEegniSjLnK1P
	 rRS9xE6rIgB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E19C6FA86
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257065333.30495.5026669504644452887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9224f96a17ef5e24405d8c421f1effcbd9dccb9b942474ac6b79895b8b731f0c
Date: Wed, 07 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662570653
