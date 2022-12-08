Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D563A3217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79403C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670521887;
	bh=HOZcCLZ7w4YvzU9YFvUWK965+VwllukoDMPkkKQ6KfY=;
	h=To:Subject:From:Date:From;
	b=uyPW10PEPOVEetA9bE0ksOJguleKu6fvZ3ohAly3YAmkHjRgLJWW9y/BjwzFI8xPy
	 klBsJLdduQNuFSic+dDpoexF/W4818iAnarwsPrHMOZzfmqAD6DykVsQ2wlj99m8S8
	 5pQGYH1MDyiPUS2fXwkQE7uuuwjSwK9acjO5dS2fb/fI7BW77g+ViZNTDuJRM7SRAT
	 fEg5kklKH00o+8YphOWVIkHb7cwXLc3EWmKxl6QEx8ISuGgw5WYAxI4g5Ng0VZdJa3
	 pTGmoIz09l5YBnwGWtnLVUFjYUhGuzo5ukGmYvfh59E9vxZHkfYxxFX+XJZ7cv3in+
	 Hh/iyOLa5PZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EDDC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052188738.10389.8333608074444294327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98dc39e1a0a51d1348aa5448d41ea02cae49db5d01d007f00c0543f0ea85e9c
Date: Thu, 08 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670521887
