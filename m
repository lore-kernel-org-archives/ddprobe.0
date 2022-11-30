Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B0BA29
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E76C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669796454;
	bh=le2Nd2Cl65ZzTHxyxxN4cAEYXjHSOp4UKsNhVIFqNRI=;
	h=To:Subject:From:Date:From;
	b=YkoH9jlJPUEv7p47az8R/0tZ4HkVRPRTck663w5fWMb3fVeSfbV0USMFshVhZqhJQ
	 GCfbX7LbPW7RdK2ne7N3lsQ1RD+ZIMv7xlrLW5xrC2EaDJ99V7NoEgyqCZO2Vz6kTp
	 d2oXZK68daBPh45J9XkU/aYzbbS+BrJys0r/HUnW2UZlhkQmFqOr7Z9yk3impXe6Y8
	 HrcLbMZt6vOAFtG1Kq7WFdqXyRnH1NommD0yxHvccb9j8lBrTwYRvb/PWYp8ODSY69
	 Y8hhQfqNOc3q9PH1Qi0UVCGNhxHmmYVWloieaq5N9Mzx2ExCy93Av3CEFZWGX88gCL
	 BMkzwDBBI0k5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E332C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979645437.26583.17976852209104064860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a256904f91bfc947db563d3eb2061d14ee916cef24e43c3ebb59d26ff651743a
Date: Wed, 30 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669796454
