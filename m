Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2D1386
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhWQwQVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C48C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696581428;
	bh=08olPls2fKb/T8NbvQ/qlwcFwBjiW3MkQmHEYhoWOgo=;
	h=To:Subject:From:Date:From;
	b=BhWQwQVwPCzyzkpQr3p7bhDlxV0U9uTcePy0gDod8kjzrWUOj+CBpPJVNba2ZjuJl
	 ZoMnHZMgvUx9E9tKeu1Arlfn1VcGUH+wJKBCDzHPjs5nfMOdc0koEKhqRVCnnDZCR1
	 XFcABtJ6byjPiKSU5K+LowPjf1VeFXXHOkzVTXE8gRIZwfKqz4s55QP3W09fjc17up
	 qLKgglfF2TQlW9Xw4Uh9PB6gR1KLAMoWDa4dm3agW7Xym5qNWsW4/ueA8bKCRMqYfD
	 lYWABI6+DWiz/CWfR6qILFaPL+GDqofYtyNOLlaJtIqbEITlzzvMlTHVSv+qXNxmgp
	 sO/AZJG8hvFRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF5CE92FFA
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658142869.13340.661786542127333221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe707e948628614e40d8b36ce6f37c61e94b0a334424cea4bdbdb69da1443fc
Date: Fri, 06 Oct 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696581428
