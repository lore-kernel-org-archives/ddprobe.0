Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F0B3985E
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9dlfHZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A36EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701358096;
	bh=hKAP5hesvPoUvKqlWGsDw8bOuJ7k4bEMM0ixZybfNcE=;
	h=To:Subject:From:Date:From;
	b=s9dlfHZlUeqL6vV5/a0OuB5593QwsLT1OBhcws+zMPDNfwua9OoZLHFr/UGGWFW8L
	 WuOiaIH8p0cieEnX7t1UEHwY1ziJ7FC3lG+tvi6JA7Ci05agFy99AM2aqWReiRLT5o
	 F9zVvTloPixY4SO8uOESQvz3rVQZwATAEERiKOHOYxxkOBfnm7lc35zj1YluXCKw9/
	 NtCjQK8KLgd7ViLqDwEOYBPUbBDUfFVaP6vVP7gYn7l6z3I/0ihBycjzV3hKH86HIf
	 c5zNRQZSH024owBnabAUcWW5217k6LRzK9Z2rBiHupam+OQbkJHnj/7EpeIWGOTf9q
	 JvOkhTpFsZt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCFDC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170135809637.20839.7097562465448284538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8460b4a24fc0d1cb52ccf046aabfa747b9b15dfe4f67538e0ab5a46bb2e086
Date: Thu, 30 Nov 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701358096
