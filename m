Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A110F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75167C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665247253;
	bh=m+9pDndXm8kIo2yLUEovquXrUzD/2zzf0O9QdP3FdmU=;
	h=To:Subject:From:Date:From;
	b=Ur3ElSuNrc68OVa2ZrS3My/D4GOirZG76FLB2Aja0IvKMYExGiA0QFDr7+kHKD/3J
	 lMCU9Pfr2ThMdvlMuXjnWNY5e9cONsC31g9d35Y/OMgAPB6m1g92Z0qAjxgGufEOFA
	 4oNG5SNwqHJQblgI0eGgfIkuIKjvbHZCi/FRRtZjL1FYk8BqQZ/WYgI8vqvvKjq2So
	 poclYJFrv9G91c9fmKjrLy59vPNGzhbLdMr9VRbVYy1zRIxiiOY7+68zT4iyG3mrC0
	 zfm6N3rmAxxHIc0jkf1Uu+gIsFJqVPQ38LZmhDOJHjxvM76stRVBn5BCvR5RA0S69E
	 bDE8+DNYbTPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58283C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524725335.25488.16431131365274003438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb844d95f2d6aa95ac953ea05cfb315f80613cc0f46fc5de13bd3b8e09ed5481
Date: Sat, 08 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665247253
