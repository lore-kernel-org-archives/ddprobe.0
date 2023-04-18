Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783C2C944
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2674BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681852386;
	bh=KABlEjpJNO9LqQQLujODlqRywOls5ZF66rNcJqKGUX4=;
	h=To:Subject:From:Date:From;
	b=Q80l2JHxeUOCq4WBjGcYnSwXktSWbxFMebf3LN9SrUjS/+WPm/m3BDGq8VKH+Bk5b
	 5bJPN+/lTbsCCXcFBxr8yidTVoby2xhQ6YtblK04kt0UHgQSHylEqn9SsrshYFd5Br
	 2WuYc1umZutEIRHecenkKD2pV0C1F7jXwdprDKtqKfv80XbsiBEHMnN1E3bzH0+7Ew
	 XU/woXiWWzD0U0gsbIwYgDjLlhgI9jguY19hhtMho32M79FoM57EOx0ko33Z3kuxv2
	 zWWPoivd23dLcmlqVLlqtOeL4FcOMgQqBuzSU6rQmyQpJOh374uGsOPq5Xk21EDFiF
	 z9t4pYa4wS2FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF987C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185238595.14168.14915923398794377778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2396f8b996bde9fcfb8ba5350d9c8bd864988d32b5adb1224a659c4695ec1813
Date: Tue, 18 Apr 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681852385
