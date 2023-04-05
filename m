Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EFF7FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2240C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680680826;
	bh=gqBhXDYCmwsEFLwIvTuFneebH9gm3cCyfqsqqSNHH9Y=;
	h=To:Subject:From:Date:From;
	b=Rt/Olx1PeEhM5SUs63266S2OzQvA/OaYfOzqOKmX9FPKwkMOu19ia/0TQw5AnOC2u
	 fFdblRdz1/jam2VrVv3RKOqxrtT4tv1oNq7J4R8GADNC3xKIa1sX5z/F6gIMgy/D+R
	 CgQhvaFgYjp0tqufDMjQxSnfbGtcLhbl82sfBmlcyoH10kCIbLc8BySJpFv5fO3VAT
	 7J3ggHt0P9cBDuUZ/36MtnYxytpRBHa2i49iE7cnjiZNiaUoA+j0mPHcvKHtjY/8yd
	 y0HeeaziQC0rN9dAgR3gpBXMXppITt1weT8ESfNAPqRpjthwpWTHVUT+bRqlcAmOzD
	 dhd0x6OV/oJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72B1C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168068082587.8560.11614033226919291114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562e1cd526beb807c9254f2a3aae09cca0dd50f71b338f191c43b4f1cb2c96c9
Date: Wed, 05 Apr 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680680825
