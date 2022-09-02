Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825E10F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93E21C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662094253;
	bh=4qGSfpDFM4ZYhyo7aplD2zkB90cyI/zAoD1h5H2akfc=;
	h=To:Subject:From:Date:From;
	b=Do1u09beAjcS4JmgjgUf2To7IM1/bvGGcQAw/QGKZOya3L+/s2CjCZ+R9nre6qzuY
	 C5Uz5JUlUDyva4yutkUf0IOXpxVN93lUXdmO2l8fgcbo1+jL73AnKcjwIegVmrPBOF
	 BuUlR0Vclq0DSHtmPdX77JawUFruhjUYCYduTlQkC286wyYRTba4Za5xdea5My2msL
	 pVsZ6L60aiNtzEIN+TSxPtcjnCh3LH1E1DCbNTzQmO3ctWbOIY53l/Abud9wJGd7qi
	 Ybft5pOcElOZrGexkoRZYqntHjsWjvNo4kdc14ZcJX1oZq9SWGWI4NSKkzYSN+oWoB
	 n4qHAPEitJ8bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76340ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209425347.19246.16152916621893410718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495b402c32069496833f9c1410152e4eae44b911e3abe952bc64f79d805958ab
Date: Fri, 02 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662094253
