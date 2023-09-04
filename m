Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CB47E
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCFDC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693818248;
	bh=nVrfqAQ2P3OKsKkNJcZ6v2HaTYjjZ7eQL8Sq9b5v+b0=;
	h=To:Subject:From:Date:From;
	b=WmpXgEio+hSk0nT5xNQVbx9nTeL7c9sN04KEfvsNa4FLm617l3ErZIiX+gvvi1d3q
	 RFFyKbJmUH/bdBgtCaWscYyxnNym8UeTSeV7f2ujAZU/CsOtzjY5yR6Xn7r9QU9hym
	 4LFiQx7srsCT6+bZ1P2f5o080bYYah7PZQYSGPY73Hr7tgh+H4WdmjduXVZ+0PCSQs
	 PA5u+OZhvyQQOPNmN82tUt7u5xN7qLHlFAWPeg9DKsthGY57JLyRNjm8xuhzMaXRiT
	 KrG9f5ydtIZWCpGGCVjMuMAGoqoKhJwwTg3yDHnZ8qw3qyBQRceQlRM5E1pkubPAbO
	 dbyG3yKFBsF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3A7C83F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169381824874.9846.3602494394764703664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352c15fef07d05c3f4f5b106d0d4192fc6db734375b730260475ba36ecc09124
Date: Mon, 04 Sep 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693818248
