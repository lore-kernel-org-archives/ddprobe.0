Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28D10FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95031C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673065287;
	bh=TpXD6bKuqOGbqfoGGaSYEhO61Kqrxmdr8APJyCS9m0U=;
	h=To:Subject:From:Date:From;
	b=lqxfBET1bJXcbilJ5xs2BK3eKeH6iJxfcvTHcXuy7Tp8HSevOKgn2rxe0k+LrFrVw
	 JydTlhecPqr20BBoYFPBUVeF5Xa0UNk1yv8L8Sg2WcbsFnNlW+2UGtVgt5XcznGjk2
	 6ZHyqbaOl/HwCKW855Z1BjwDEVxHtVnGdukZK/9jZr9OM920BuscuMfJ4VjAnUM/2j
	 THsc/KpIECxNERV2ndPWioeL1oOe/imb2+2rDAUovwWiwMtyHaX5runvXRS0kpED2K
	 ueE9X9BiFuBJP2XboDYDNC+Cc6Qq78d8p22taSIhfCKv4KhC+M6OMq7VJyQCqf7yPK
	 fmDK2vF8fXvUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFEEC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306528743.5820.226721811919386180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aa02e02b0c8e14ff59b64e6ad2df30c4f33ac44424f334bdc9de0a0c764b72
Date: Sat, 07 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673065287
