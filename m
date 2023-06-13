Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE53233E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43BCC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686675428;
	bh=ovDIi0sH52Dzzv9sjWL2ZObfhsAcFJkymuUmZmCSZrY=;
	h=To:Subject:From:Date:From;
	b=sB3HNKBtl9aAdNA0VZC9Yt5W6eE21S6F5ZW2sAa3/VSMjNQZF6qFlOlA+81rIQgbz
	 Ag6vKE795ghVF6GjT86R9fR6VNn2KiW+yXcj1EizYa/gmeDQS8pYvaFr+B/2ywomgX
	 r4xRUB9x4JxbgmniBPcfaaQJ9R3OxP+B9VhZorQSJz+dFOih02t/muYNJLtcgVPiW2
	 z/hKIkb5gHbVCQvgBtU0cNLGKO+knu8JKrzomIGkttpAlPeI+igfXwSV8uGoKQTZqW
	 TDntk1rEeOkT+NMU1cTQqt84KttmaOa2s3K1S42Gw5l9VTX41sZ17N+onedpt6X9Eg
	 f4n7G9/ak302g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC2EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667542869.2722.16269060514821387424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686fa4b50d244e0e7b9274d4e63ec78d999d3ba6985994343772200d2f0bce28
Date: Tue, 13 Jun 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686675428
