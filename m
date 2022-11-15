Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DE58AA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA5EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668538254;
	bh=qRZ7Ldd5FUYC6AD6hg2CrcLuCBGeNO23q5A4kq5s2G4=;
	h=To:Subject:From:Date:From;
	b=d0iRnq+OYDkVKX1iBK4Hovs3t46dLsfqAgF0fOPPyoHzegy9dLykMVM9P3U5D6N+9
	 uLSEpYyNWhI2FeFMNu3cHp9VeoAaun/sLKL67vnsvx3rEBUa291LUlHuO+vfyssDv1
	 O5kxnWnBBpUtcigOcgtn1Rcgvt3EOW+yYQzzgmycgEzEJO2lIvi1ZM2VFRjcPJf4Z7
	 Oh3XetCjgPFZGSkywwHGgSiEwjZREgQBqH+JBe2YaSwrYLk0/OBkSzc4O/BlSNlWqc
	 SaXjcbL7pSXDboOT8ML3xD38D8K3DZc8jhOyakZrgLfQFOYDQfMYA1mIBnMa9w1V2X
	 +Zzg0q16a6eAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561FCC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853825434.7224.8152411692371485565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7182b2ea0b6bb39f7619b89caef34b185ee4bedf0ba89ecf5de469c91480aa65
Date: Tue, 15 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668538254
