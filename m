Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0B8320C
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1245AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681946706;
	bh=5r/A5XJ/s5BPnjje/UYiTMhYcX1NqsJXj5yfsrDWDKg=;
	h=To:Subject:From:Date:From;
	b=cTNNRxqUilfy9L4yxo2PgR7XCwKJtDvq9hfuDkjbiRZBDHMDVE47N9c6J0svbIuMe
	 1yTgC3N2kS3MRngTfkLR3wGWn66s/he5orCzO61eTrocuWsUX4RVRuZZK07587+mK/
	 ZUebTWgrFyYLtK2O+fjjE0TcJrEInHyJABsW07cSOUEVSqyH8Q7oDxpNTOzAaLxSY3
	 F102cHKyt8KVLdNOz6Pkh9mUc4WqMfmGQf/FmdpvR+nkFOJHt1DsFmDvefFp5/MRnh
	 ZhAJxkTyhW89KDUHQT80wwPt+j+iYyvuBxaT9aG6wDmwbmLEoN+xnEWgk0qILoiF8h
	 Z8Xht4Dcs7sLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5F7C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168194670583.3670.564261829299783498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf804c0851c5b2963ddb75dea477589c666c5fa35f261a04efaa9904e945779
Date: Wed, 19 Apr 2023 23:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681946705
