Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000C718E14
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmkOC/gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8630BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701089296;
	bh=8Xr1w1F3qmA2CBqf2ibPETYA7nONTZRH+6qpvlFdaOk=;
	h=To:Subject:From:Date:From;
	b=WmkOC/gq6MweMeEoyUAra1AotTGCeyW7IbtGSzEf+srGhvyjk0QWD5cggJvz/n/tE
	 8uWzKCNsqv8d58RZBu5O8kSASnJRf6KbYWtiJN2ENJLe+i3k6/7oNgu6rMt8TdRy2x
	 xFsjL4eS78+Wi49/72LWKUq65wUhsUQX6ruyeZm69nwlovH0t7iIYx+xG5NtJ6DLx5
	 ZgPgt7cNeZHXlyZOfV5t8vneWsblUQV6HoBNNsym6fI2BXKdu7tGDs7591iXsELSkD
	 Q2BpaYhe3DlWnt6Xp0K0eIW+IOUQi47UvVpKkLLcL2+aelFUrW7/gq4LCDBdnQUnxj
	 pCnPLxXiS7P/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6709BC07CB1
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170108929641.7206.12913440489937861541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950f85858b41e6d5f726f07a187ff872a4dba842068f92ecd0f699e8f13cea17
Date: Mon, 27 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701089296
