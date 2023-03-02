Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E79110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09B63C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677773166;
	bh=HrETm91wtn7AJuwD8g9w8Rhf2yeKpHtPqcQBLgA0Ulg=;
	h=To:Subject:From:Date:From;
	b=jLSomqh1UOjb0YkqCUU8SLddijbDcMvsVYmT1CHU5TE+llY7rPjn1JJRpNprkUAtW
	 6hmsUeLmaziNrX3KO825IjGIqK8RrGb4N3jOM8cV19puHoxjD7+XToWk2kM43P29RN
	 TgfOf27R5kzsM82OL3EKZXDzj3bgRvAzR+UJ1RiSJuX9a12ut83mXOVbrpKeFJ3eb9
	 T/diy7/8fjiTp2GD3JGFhbZ6krGsgICwJyjLN+8BmLSvwNYOqjaUX1OD4QykbfawtU
	 HXOBfuyRWiGYdXjHprWuAisx0yE0l4AVHj4c0pGcEm/AyZrOhHCSnswkwSuV1yoCmN
	 xSdW1maCEFasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFE74C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 16:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167777316591.8266.15552027006757808676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064138af3c135a340709af851f76addd54f20fb133418d57c83f7f9729eff9c8
Date: Thu, 02 Mar 2023 16:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677773165
