Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAFF23C5
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7871C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678708025;
	bh=zIzi6qr6F/WgKlhPZ3cKQO5Z0Ujn43nWOqL+Rn/wUnA=;
	h=To:Subject:From:Date:From;
	b=f0cyttq7UCCPdqk4U5fHisuK4Ki0MDNxKShry4zleRC74ijmlFbFZe7m1yMAeLvWl
	 G1VtQMTdy/O8NDOTuFShAvFwkIAgiWPtq2TYIezOZg8GJjpwBhATjSLttN2OpKk8Sa
	 LJ7Td06BJMf0XyEOsuFICGfNOjircUjt6zKPV9R5KzkctIcbC/uuHP4IRKMGMvWu6e
	 +nx8rTGwycgPDHtX/q9WBSmg7W016X0Rx48F6LHCd0mPUM1CJLWfgOCZr8SvoFxDoR
	 A3kysfLzmyoPNzQtg+ANcM2QiskIf0AJXHXrDf4/h1uTv7U6RcbmaxzL+ecnwO3f8t
	 6eHLNEv8eT+HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF081C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167870802583.9026.7778921885010475891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123be49e35c5e59e844e2444f54404a9b58aaaf33e339b25ccb1e79a06779bdc
Date: Mon, 13 Mar 2023 11:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678708025
