Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFCDD53B
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ/PrMGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4D5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702538296;
	bh=W+dHU5X58sHEEg8bR26xROvqxqWNOK3nOFow5NO6e7g=;
	h=To:Subject:From:Date:From;
	b=PZ/PrMGYJYWy854qrp00VODWgjVDCbe0q1+5SfISJychQ2L+QxFgT3f9eDRHAFJGU
	 IsB9PMF4jyO+1SoXb0qyrbJ1QJEotTqFmRTB/Ch36DqPkNXhbB3aMtgGEDMdQippNE
	 H5td1stnuWwtoLMs2OSB7gKmA6YbUvzfAhiHi+oVyN/CukEkh2mgkA5eMwvwddK5OU
	 wriUOM/YoBeOa9CKu7v/JNk/BnMhrmNBlzBDM4jZUlBqjKLzNKmvN8467fapZvwUm2
	 rYSxDuM4ym110siCErUpU3ztlp67mniiJ0uxGkLwQkoHAup75jJ2iJMOevNJOtFIVR
	 6Vi0tzXxnyfeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D154C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170253829637.8501.15436000588113004204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0756f5854cb4fad44bca6336ce302033c2d9a92167f86a7e55e24a4e647c6a
Date: Thu, 14 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702538296
