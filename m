Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C627E8F46
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CC0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666328453;
	bh=p3qh4oBM+joVh1S7OBGpVQBXEeYSuzabYm9T7+9DXNU=;
	h=To:Subject:From:Date:From;
	b=lWQPYZ/eUmDvYtjPLSvqrtPBfcERrshmY49RaIPc0g+KohHD3oP2WPJpkQht4ve8T
	 M3PGHAE3aARyUbtBfbwQcfQ3fYENRkhD4g0E4Wp/sCZDwYWuUEpT1vwBqXLr/WaC91
	 Q6gKtxhXm+ZEUnoerE1YM0T2GjhYVcKngleHEIlBQhWEit1fLXVE//fXIJY/PbOEKr
	 omFFcbrhsKjvZt5u5rYUNjz5PQQ6H8jdP+3Ll7vTkhlgf9DCLSDnUWX3BcLd2WTjlL
	 fcpUKRefiuSOTnVLqdeXryKq1dlK2BR9URS066SgolW0ocq+yQPGzAPsstD2QgGUe9
	 N7UlafnlErppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509F4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632845331.5642.17309504527798517977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3d9a669dc0b7a5b923205c3bda1790ffb35bae86e603a06df55aa1f00832ef
Date: Fri, 21 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666328453
