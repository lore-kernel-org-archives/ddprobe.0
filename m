Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654433C1D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66B6C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688909228;
	bh=uAPd0WCEuRVLWIPA8vqfjw0rHOMEeuNd50A87OuOD5A=;
	h=To:Subject:From:Date:From;
	b=Y1eNAukCoNKIL+SR4C9i+zVlcwIvJBhyr5l3ofqksoBN1LP2weNaJLbwElXcj+5Qc
	 YcDzRFLDDKXdZ/zM20jrbyWYsK5NQOKkGKSzOQ4AnnHFzE/u/900Xz7mG++M3p06E7
	 EWPxYZMK0eymzDypMBDzLSsworPeAOaQrp+HGrcXWKQOYn/8uE1bzaVyfREf3ModwS
	 u3mfq6CktXbMNbTu+oEoBfwBUGmisVVHjNgTJY9vlxtu+MCdB6nNnZ/Gw8+BImEEFD
	 ep2CAwKJSUguiefj2CyvQ8ecCZlxqIyL1/Jx8w0vxnOcIFdcX4/ZGcbDHyegRY0Bsq
	 SagCgo/3LyQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E54EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890922866.11059.6723553531350375910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed19228b2d8003257a47c280e2638353bd72830c742e03be6d0dbd39a6bdf78
Date: Sun, 09 Jul 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688909228
