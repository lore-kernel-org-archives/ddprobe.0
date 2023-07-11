Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD3174E5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C498DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689068828;
	bh=unWNEWR8vc+c1NXqwNTRjkenToNVJcD8HTL7ir1nyQg=;
	h=To:Subject:From:Date:From;
	b=lOc+mgrgm+7N5eLQjmXHgfd0LZLHegK9bMDovZkgi+XgHRF3St86m+0XUcclNSdpI
	 UnLoWK6JMMTGfsegW0yvNPG111U+jySLXwB7CuFfxWfc0x3qiDjOKdJdRk0VWvvedv
	 vzMM/gfBNtuNYnPvDqo0blx9Nty6nx7ZuaB0yUp60BrK1ZgSGvVe0TXBExxeT+1tyn
	 iRC1UnGEKP6cwda4SEf+Uq9d3y1CQ9fAUIqpiiFk2bJxwPF8ApcHeTM/1We3gYKI01
	 LNLrBwzM8fRcU8S0EwRo3qkLw6cDJTtFFXUDHxT6A6NPyNAnQBQu3qs65ED442hk6y
	 7+kWUNYzc3/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB970EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906882869.12810.16786865491223664805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f228175af8e19e19d1344ae2c8bb7f7ea624a3ad5aaff43bb7ad6d3a2e9221b
Date: Tue, 11 Jul 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689068828
