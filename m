Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752F32F5F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 11:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA4EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685792285;
	bh=gDyn0cpOLGjXwESABgNBk4vtXXAzltbJ+hfjsvjlNg4=;
	h=To:Subject:From:Date:From;
	b=Hpvgn4CqnQpMER+F2Smw7ybXktvqPJo1SrztUJCDRr4DorVjhZKjzK2FBWyX7SqL3
	 EPcqYOYNELcgT6klsHCD6OCZXP/KPyZJKDxogJY1MHRc/4nIEjwpjjUTs5aP4y83iV
	 wP6+IeOEnH3gR1qC1jfDCphgJsfBmmldV1W+lU4oJ5HK/uOrfs+tf35BXZNrOy6Oda
	 9kU31AkfTSpzYRIAUOHZKCIykvZGQc3zPZQxXFgP07dGF2EfdrKR0BIkTGCQ/BVCIe
	 5oy60a5+xV+x0Rfm8vSvu/5MeMOV+8sYMhPSWILenoS9CtggFLVin5+kShQcCgUOiA
	 Yvwh4ohTgZP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7A7C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 11:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168579228575.13969.4915093632555721484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331d6d7c54866c2fb54fe2dfb52b88f6f677fd29ccf99f3b241f5b4dd69ef3db
Date: Sat, 03 Jun 2023 11:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685792285
