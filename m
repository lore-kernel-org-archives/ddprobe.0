Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9355809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 644FFC43470
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666612253;
	bh=6m6a9q6MsOhYgaECym9xE2lRvxF/n+Yt8TtBmp0P7Rw=;
	h=To:Subject:From:Date:From;
	b=IwWvjGbSA7uRSgmdhpZKPcHY4gTuzWu5xSuDUKrE1O7q21i6MvK+V7sOQaormmZrk
	 VVhtwXo1Iu1UmOeAjvsqlBR6Tg4xRgSeJH/47/Hme8xkIfa9qyzyRlSfD0/+oJ7squ
	 5DHXRxCyI5rdW6gGWguI1nmjrniP2ad7nkZyAt6b/raT9/RppwNvn51BHuqC/1+rxM
	 V97uHccmF4nDDDFfH+nclO5T6DeLFsrEWZ6jP6FslINUXt0qLubQajsVKiTPn+qhju
	 xVb5jm6arnrBcQ7LZCQFfkuyMVK9rA3qSl53TlHxQXcX+0h/+dP6uMxwi8wYGmZto9
	 q6N1l3SHZQilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEA8C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661225331.11108.7396400202983604405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf8edfdbbca50561c8bd2d0297f576af9eeabef5fd9581e0fd7aaaa827e203f
Date: Mon, 24 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666612253
