Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C184A09
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73075C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665088853;
	bh=ERKJQUrT+o2f8d2RjgBQyhpkng9frzL80UmAqz4sTHc=;
	h=To:Subject:From:Date:From;
	b=J4/mrjH9jdMjJCTjrAl5WDb3qUK1/SHux55UKG2BW4fcR1Tv+Es/oiHlDVyynMb3O
	 vKduvqGYa6HjdJ4HX9cE5E4Xb5XNQ/2v0C97Cwv9Lk8RJnXPMy+MJHWRMLgfgPj0NF
	 /JaSig0dHA6ZNQOAGKcXsMs3uv7DaTHAwiwMWhqjmDU3G66abrO+oLGY+xy1UaqYki
	 dAGKYVCalN7SyHD8Qyev82Jw6uz8YaiMCzXb7j5sl6HfveBWMTMKMwRk2TyeHXTRtg
	 o9Mj6pr3rCiTNHqsWsDgYH61kGihJ2S2f7S/4HGcZ/ofwquh/mbwWMYhQ5UWaAkAYd
	 EQHFFRdZ6a2iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5710DC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508885334.31724.1087925806864029894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cc06cf15382cae83d396fd39471d5b71c8d77fa35ecf2f2eb144c6cd6a3377
Date: Thu, 06 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665088853
