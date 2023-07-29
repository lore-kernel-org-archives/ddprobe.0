Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693CA18E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9396C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690609328;
	bh=GsVOsT6/zm054SQZAQxkpwzV4be7BA1O6ZeGWxVVu2Y=;
	h=To:Subject:From:Date:From;
	b=uuivppV+I1cTNHAH1j7J2bZH7twVrT6LWqiTcH+Px/cRuIdUNb8AuCrb5bKpgaeyj
	 vUJxbVQ4fERQguogCW7Zuqrfys/1jPnw+Q9hEotRgGQx4qxwokRAiLVXQkjmJWVYtX
	 vkcDG7zAZwoOkptub+oEtHP/LoSZvpMY578OAUeqYwkpN5K3mrH1NKD2YCl4fCQ/VY
	 9SxGw21VnDq3nKfMefkhnbnU3+hVq04NihPPc4zT8omczk36lOKtPBsMQBmKNZ9IOz
	 TUhs8NxdN6P02lHIS3vd+/O4uEbR/S5co6BqsjMwb/kPBAQP2pL/LbgVgK80hL9Loj
	 XpFuSlNgmsbog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE28FC001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 05:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169060932870.24723.6114116495313855020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8b89b7b1b369c844acee2f217bb8f22da97c66688c9289c16c4efaa97b31ad
Date: Sat, 29 Jul 2023 05:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690609328
