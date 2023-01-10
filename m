Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43BE3214
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87592C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673343687;
	bh=l0NiQk/JEF9k7aJReDRyoIQuNkhT0jwoI5p9lDaz7bU=;
	h=To:Subject:From:Date:From;
	b=cSNEG+DCTL0gayMFYOTxSP/wkYA/RzBpgTjK5XAgMuCF+W9/KP1oD/J1RZVjaxnjg
	 rK0bwTzrQiaGkuZTI+x1pI7JOI6snxrA5v4Sgjcrc+ma6EzXg7A7K+iiqKxPMTlkVY
	 yEhlGufQcF4hylW/G20b31uCIZXgPqndsQ7LM2bDRn8lDZ5DtXFDPBqYTzJLkva34Z
	 ZPpwKnDcpKN5/8IuJx5TLiea/o01IkH4XERjebtA1fYqx3DNZoWtKODSx6HvxwVi2H
	 Fwf0BPRCIL9FL3ZPnZ3TfhnBDgg0+5oR0mk7u3j+tNYM4NAXTxfK2e+NzIxzKzN44q
	 KcvY6DeBc+clQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7B5C61DB3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334368743.9789.2072328015161341757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ad8cef2cddb469fae3393ec3ab84eafa8d41fe84c89f8ba5e293ac91eb896d
Date: Tue, 10 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673343687
