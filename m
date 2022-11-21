Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99D97E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C597C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668994254;
	bh=NW4VbgDZvqA/hygRL1YMOwvKdxKoshPChnAjp7CZ8I8=;
	h=To:Subject:From:Date:From;
	b=QpwNdYk4rOM7S3znCaH+O3IdAyq6rxrITXdUXPrnxedaWX1UeOIYSGypsCl9uJNdZ
	 KX/ij1l84M5jdMlPcY582VuBkwJGF2830opVDhOG4zH1kgKm2bFkVasXdvAG6sW8I+
	 M4p0V7aSiiZUhSR6L7BzZXSDAWMBaNB853MkU49hFPzkCkSaSnU39cC+D4veEze3Q6
	 8M1tpKgWryhFoBg/xzg6gw/NwIQ/IG/dZZhYBq27jaWRlxswYhUOMqSohFZ8UJQIAA
	 DT+oJ52Eh82a84/+G11lYvKuKY2QuT6juBZmkn7GXJPmcBuEWys7g0S8yQ9jztPjC4
	 Yt1/y9R2ZxvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF14C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899425434.14568.9574887966877072629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50719998c2a1841a579941dd025c8fec8233f411f84e6921cb6acc7a1e2d3efe
Date: Mon, 21 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668994254
