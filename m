Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA3D7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZUhQebu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E18C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698979096;
	bh=0CA5xXINzPrO9cRVNyJy1vP5XA133mSJXA9IRRg2UGM=;
	h=To:Subject:From:Date:From;
	b=VZUhQebu5jW6Igh2WZeQ7JOcl0KJLLWprUJFASwAITClNHrzDQ7hnuFs0Kj8LGzit
	 Nb1cCMCStxiBwIVdXCfSJKYmJHa9SMJDONfZ3REygU0wGjqgQckUO2ZjQ4d8xGbrL7
	 6m8KVp9PLbKh21SnwIsc4fqmL53ipZnMgkoInvFnDM3Dn1VVDosNNjVen77j03SxNk
	 6tcWmVbO0fjDRj3VEsTmzeKAEIDD+gi0frG1p9WPT6XtGjnwbYYMecxpLgzi9ski1n
	 5yBirragWSxLF4UeB1wKB6sEDGDk6mXGWfe22WQ72a35BFyS3pSSmkNqJH+1vzHkuB
	 Y4wYFkskQs0iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614B1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169897909638.26109.18364144573035697054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af99c8f92857dcf82013c10273043fc7ec364e9f62776822247fa0ad886090e
Date: Fri, 03 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698979096
