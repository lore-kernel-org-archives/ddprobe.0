Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB6F22F00
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04FFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695415508;
	bh=DqoG0E8xOVqlgIbSqg4oY9i4/9Czsl+3gtXq8MB/H1c=;
	h=To:Subject:From:Date:From;
	b=rqUoNUqll00z3k6cew3Kt7tUlDWvGK0GwJAZcKh9ycYT1L4uy/kBRJvrkcZrBhXKa
	 IlJ7l4mH6s2HmwkFdeuKEw/ODTGZR5ZoKMuNGaV0Chk9Wqt+r13ZKjpXDLx0W7PakW
	 gKFbZCctO/vlziVo2m0CsDy7ye8ReirD7hNjvV/Q47f8VNkEBbq2xyOK/AhH7s8eee
	 iZHTKMHCWrRfFPhjB9J21hQ7H9zjwQGMGaGoYL2w0hGIBHBmel/Fb73tMogztARM4n
	 /UQFQgOH9fKMnTdtDsJQ+QfijDWH78TTdopU8WGCt+ofi2FNuFuvcTJe7YpvLRDbIy
	 1QdcNEpMK7i7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC277CE7A86
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 20:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169541550874.8852.9992347703692216133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc77060c20bc4c119c37896e9ec9d7757794fbd01a22f1b88495ba82d5db5a0a
Date: Fri, 22 Sep 2023 20:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695415508
