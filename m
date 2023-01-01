Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05D37E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896B4C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672570287;
	bh=/c3uCKw85jGFcS7MxW5d8N+TAYmXXxqE45KAJtI7+Sk=;
	h=To:Subject:From:Date:From;
	b=KjQelZIGiy6MRGOL1J3O8AA6T5H3n7ZNRfuw0j9ciBCPwFcXB9/BG7dcRegmaE26o
	 PhwZK7XBzl5d4eWg4aVLmrYHi4mGShT3x1G0FbMviXq7sWPr/0DGUUj+yIiookU3Z2
	 TEjBdOo4WspdcFVSV1wa6vLxG/dcYNZTWao/nxwOas7wJuLj2U5as1ohZBMsJSr9zB
	 Gp1Q7xvc2kFZva8iFbYLW7Ik7ymrCIUT7fI7kp99oEkwZUNhLmdIh1iEv8x/OoIoSE
	 psI/c78P80qxMFl6XhjNl4w+3vR68YYfym94P2iFhMNZJ6yCThRv82ijfggYa6btTN
	 bFXtXbmTa68zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C130C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257028743.23458.11462807866997540888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be861890bf8bf973f44616bbf58488778dcc583479454c7916c2129e3e6a455
Date: Sun, 01 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672570287
