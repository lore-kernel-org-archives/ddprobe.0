Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A526AB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 23:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C875BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691710388;
	bh=Kz6ZIgn17GnHAApZ0A3GdCr7Y6MZCGMW8CumDu4TqNc=;
	h=To:Subject:From:Date:From;
	b=O6IL28yBWDoQNmyoHvVn1yT80IkxmT4tQC34V+HxdW59YqxldJZ7+PA2tlYoNRaha
	 8NkmwUOpTy9oALZS06vea9f4paq6qy5uXo/SDn4niyzX/JjpYpz4XMZMdhcG295u3v
	 67NHLhpS9LZQ19FgpSJXBqWckfXGrrvszdrls1IxNLFVvPnVSsJ2GckapdATzlkXsy
	 FfhtneMrIUhA/BgDKCd03ZaYHNdkNYR8DriJ6f0G0g6SCjyT8oAOrroIl6MtkMXk4r
	 iQmP7OljBg9mOtRUFcVteque0jOlvgAtd+vgNRM8yO6O5nhRhj1mtafb5yRIuxRcFQ
	 mwmmgNwrgicDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD56C001DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171038869.14538.16780186905606262613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcf15ba7d542215902a05057d40bde4df7c437ffcfa7863fd3753ce8f3424aa
Date: Thu, 10 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691710388
