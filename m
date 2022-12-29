Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050AF8C14
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EBFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672353687;
	bh=mzCVqYBsPEGl/vcitCU5Y7KzPzlfouGs4RNa7jjlAlM=;
	h=To:Subject:From:Date:From;
	b=OsYjWW2Be1ROboNSjksB/LAknuah/DDVyunSgj9JXg/QdKSpCBtYeC+4a2zHm0HAq
	 ygx1EFgv2cS17atwfOV2vmwFR5pG/LUjcwVOkk48Nraf0KBhbdfloD4+gReZDJ1JBj
	 fqQPeSe+HlwkKpPbGG8v9GbU4CO7E7piTGDAtOY4rnOlnFqKo2B2QyQS6MtJH7WwQ0
	 7sFZ0X1LHtMQJ4J29jmoQI2f5Etni4mSHljHn+mvfX0CctXo9ZMx0zrQ1+NAcjLx0W
	 bYAbtgeMjRo66Sg/PEbi4OYuxCu/9XUgV9SKh/VF4eNQV8zRGU/P4DTE3aTG79Scw4
	 BiYiC75+WLA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8350AC3DA79
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235368751.13441.6450938757695654435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2aa0d632788878395e39b9a4b696bc361d39fae640485ac3f38090b73f3cd66
Date: Thu, 29 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672353687
