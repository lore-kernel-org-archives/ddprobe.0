Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BCA7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAC8C433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663144253;
	bh=r6zy8CWypuEm1v0shSHlVNKEyx9OCm3yHodqXsZU/Dc=;
	h=To:Subject:From:Date:From;
	b=If41RJRGoSaeFv+t7GPNhA8KKLiY+PTEbs6QApshBveSq6f6zJecuxomYL2L/xa8P
	 1UMYPkGrdC3VrI0QMDnrG6t/iPqyMcAP+pHagANXgenL3OIm5RJq+X8fH1XnILL0+J
	 RNYsriNtr7lrY5dmmFp8uANcLlUfaDnx9cx3Mx3qlLq9fh4cl04U2+f/RRFlhxovpT
	 iNfHZpYM2snZQflUn2yBwv9G9JDqa7dv+vH0lNQWqdjY8rz0ygs5FDS4I4TKpGZQWV
	 KqIIHMlFYSsIA7ufSWzu4IC/aWFvOmE3+TTdEWGvZVMZxpVW42/Otl1p8VFr1vp+Y1
	 kaADiFiHqZaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51038ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166314425332.22161.5581391003545548525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4744be74180b7ac17acaee3d55638ae8f361cb2beab13702c59155e31b2bb3ce
Date: Wed, 14 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663144253
