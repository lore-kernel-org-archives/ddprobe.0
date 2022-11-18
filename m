Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2CED51B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7214BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668809454;
	bh=D3irWUkLjxR5sXJ8YqgUxhzswDKrW8DcBdHq6dD399g=;
	h=To:Subject:From:Date:From;
	b=LITr2CC8SqNDY4uJ0LnvB+tIvpWNxownGuKBcXdE30cf/WUa9G7qc0PIMl4bMIXK2
	 VM6hGWP/y5hxU7oNHeo+T9P7unvC/gqvfVNRsAkbqDV/iX1GfNMNLtnkUMHMVgFPEz
	 D3ITOM9Lp9C01xj5vZXgYaImccBRDMjAXV6VmkrebFHlmoqFz/6IEv5YwiSYEQzUBW
	 J8OXE393wtGSsjqyqZ27KenBHqvmM4R0jlh5P+Tjm7aD9AKym3RA+HwlcSRMzoGu8l
	 ij0pY+5nD9UtyIfOHUSwTD7SioC/nL9gO02y3BJJmNbxUlpanvbEr8OCXGiLmxlGPB
	 TDrRwY4zQu2Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3BFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880945436.31076.11922400830721411641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d8a33d981a017522c0d040464fbc69bf1bb97dd19127a9aa07b0b60de9e428
Date: Fri, 18 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668809454
