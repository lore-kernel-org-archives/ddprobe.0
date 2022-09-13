Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FE67B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A443C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663056053;
	bh=2HzKZVvOVxQLpnRnBWq7b9cWRat81W8gt4biR8HZrj0=;
	h=To:Subject:From:Date:From;
	b=hWRcve+rWh20cw7/1PSw2X9xgeQx4ART3NGcRm8e9CMFk+U/oLzyDckxxUV6804su
	 6FO81tC2Mjlyam5JduojlppKU1Qs142sSX5TL3IzThO6P6n8+tH/4ZN3BNfHVEKtQd
	 P5ZPycnsRjN3Cn/yFR8KMbAPnjt4olCVHXkbInfNmB8z16x1tPX+GnJ2aq7pGt7O5w
	 q6fUrZ0N57CdHQ9bqMdnjuhVDXH96vVqzrgEU+UBMkUZjmXF6rFVYCebBDJR5AlA/Z
	 4ODELXtZW7oZNyTqMDJnmCsi+kv0vKdf7qbCOGm+aLn9X4Nmb530tS/V3tLGOO9TZC
	 WfcS8XFXoJQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B2BC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305605332.32059.5743976465953247440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2074fb9f4fcf421a81e9ab223270586180d1aedd3b64d41ee7a8d37c25471fa9
Date: Tue, 13 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663056053
