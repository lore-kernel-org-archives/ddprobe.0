Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19CD7B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815FCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672884087;
	bh=ymv8kiB6wSSdrUngIBZ3btkGenIZdowxkkLvLCBHepQ=;
	h=To:Subject:From:Date:From;
	b=vF1wUFtqPCiUtbMGfbVbXfJotE8INVEa3HI9W0AGeI9SyyAEYGrnD56XcxNvpvRNw
	 vEqsU5AsLzDT/8XIw7JhNWJXU+TX4IRVdOzYLozyCYVfMHpYb741B/yo5tnKvwcVsI
	 919mknhCtrf+4kdZEta0L1OT6h6JsiVH5QFVBOSC6VyeHKoXIOgNwws3HsidpXWQya
	 HW8gUdFF7w6Hrwny4siXEpK9Z0YBkMDBPVpq0FA4w/1eJZ19eFJwKS3X6VDz91X5oF
	 R9HkCdEhcYOhx3DOzNFm/98vrUrYBo6GeMPilUBkWRTaLA6v1e18iHOxIuqtfIz+3N
	 UaSPFJ3xChGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64999C46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288408740.10524.16410657611058344447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8d2ec8f45e4c6cb4ce1d9c09a2b03ecb55370de65f77002c0d76bee92b502b
Date: Thu, 05 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672884087
