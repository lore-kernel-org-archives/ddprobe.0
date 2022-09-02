Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FB61869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71496C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662129653;
	bh=P6xcAX5J33L+/X8aXURN7wORFat7n2+1CfxzkueUWog=;
	h=To:Subject:From:Date:From;
	b=u1fg0iQYhT6+s+VhLvAOc98PDPMoVR7LWokfvyMuADZw6nZFpn4t92EuXHhFIOlWe
	 Y1ezSnEN+Vao2lUyEx7p4JA13vR51fJKyB9Zf19i4rWwDuIu5kssawPehsc8+qMimi
	 33Uckf0qabayL3uW3y/FJKFrWgItm7pZ8oqfRv/CUxguI/g+uBZCw/sqqU7DcZYdA+
	 6xZozuAwac4kIm0gffLaQ8b9hTjYgrh/4NIsJjQ8U8dnMzPDvg3K39C6LWkax/8SVF
	 EECqqzxxusdsJYIel150eTDXMqxUIIoF9XZisigvxqvbWRcSxgaQfzAAkFRSkg9dcp
	 BTf1MjOz/3uVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AD1C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212965332.8353.7802057301571337131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5115f75fd8ac2ffafd8e6975005404f4e1d4a5075cd9cd07d4d4db2f77971db2
Date: Fri, 02 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662129653
