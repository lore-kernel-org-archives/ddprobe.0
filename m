Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3648632
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E958C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665028253;
	bh=OcqDB0LhSHazyZrYWsBLqCFTLd2alK0u9JtZkKH/ymg=;
	h=To:Subject:From:Date:From;
	b=I4JHfFkpbPm+Bjsk1sp24p3EkEq7nkzXzGVovdlYRJSdq4ncgOYr8LunWjwvEgPSl
	 t2i8UMZYF6ehYl+Xos/eALGxZYGVVd3DObTTGHaj7M0YwZR6qEHrZ6KUZi/YUSKkVt
	 nfu7X+VmNlvjV4Bn4AoP6Ts3rQqbr23tcOWcG8vgGFTKjPs4PT0dHZWJkNjgZeGtxB
	 rVmF5I6XKHVNz9R6Hj8WzZwfms1dWWunHsVyZe6XsrYPJbSjiUDlsyzY1w3wPXGsFh
	 cyq2rswz7WtL8XaFyG21PT04Xhu114Ai1q0qFzUhU/EQ2xLAfsuMiB/pHE6uWlDWD2
	 AWgnKX1Cq0pPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508E1C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502825332.27091.4118721415426843428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160bb5fa55b92917d08fa17dbdd02e60c01bebb9bc56f544146db08a9c6e0a8b
Date: Thu, 06 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665028253
