Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCD97B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E92C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670077254;
	bh=KSYskwqUz/aj8Fnx6N1IVIcky1fHo/Cr8o0mzcU+4cM=;
	h=To:Subject:From:Date:From;
	b=iYdIeZfHkkRj25Om7iPKW81nY3WVVCHEeq+p1ljju4rRXDcjtKDu67MWjWB+27IsK
	 en6agc3VvKGZxLQ+sxlgf9vsdGcCil+LZGzcHrwui1eAUEeqbmGC3yc3KpDC+PJOSh
	 cBi7rQgo81Zqb57UgkGbmp91sO174MokjK2g0infZw7SWx9L7dmhgDm8mxQlEAy5dV
	 VkOUdcG9qweqad7FrLgju4zIMliZvn9Fqmp5fR3nAxbT8UydxcXfBOVYiK4h1S6fIy
	 biHAyixpbPn8G1uxooKKbthn2SAC61k5ELGXELjUKEeioZ+RQyMO9d8Ef8Q3SziFu4
	 rKl4yMYXI8D/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7DBC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007725431.25086.16680789261115034533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad05e217385241a15c2a57cf3d178c00c9c3f076bfa75e53964cb866bd690c2
Date: Sat, 03 Dec 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670077254
