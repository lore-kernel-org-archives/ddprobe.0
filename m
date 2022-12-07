Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BF963E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFACC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670398854;
	bh=Uz8pOUPqH8XAU85dbp16MOrUMis2rD9htiCl8OQvD04=;
	h=To:Subject:From:Date:From;
	b=s3gBOdI1p1Iy9PLE2vjeQJrHLjhv9VnvqE0EBZKY+6BlYhx2N35DOFy0FKISuc3Fp
	 bBb8+ksk9v7HRK93Gv4KVzKfs/v+i1SGylzwqe2mv99GExXsnuBupUs6RSeX/xehwN
	 dPkgIa+f6OlqL3ZrLGjDpiJEdTvI+X/8HK6ZgQN7Pb8zi0mwbGF5oDCUCa+7UtgB8N
	 36o7RkAV6hhT93LYmTq5G5dIKFVzqKfFNBEGgZMt9SXj1+XHrFFA+ln/ntCqdP7gKL
	 lgsbzdQEPSXz2C7m3C0d9wJIzEvqmtAchSEnhWaEdjKK6QvuGb/OnJlSrYmTR91FNt
	 GVkqe9cic0K9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F563C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039885443.30545.10430746005162280123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f5bffe7a5b5ab63ba84fdd571aabdf73db7a526a1b00cd0a6a03de418eb6b7
Date: Wed, 07 Dec 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670398854
