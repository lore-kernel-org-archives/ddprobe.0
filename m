Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C96D521
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C26C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669917054;
	bh=mKiJ6AHdOkhPBTu5MlLdwCHyiITT6F7wU3y67gJ49To=;
	h=To:Subject:From:Date:From;
	b=WpgBhDzghN4meVH8K/lh30ReT9PjebHowLn8lgsUyPHMB/BdiJbN7q2iUMOE/4LwG
	 VVOK8HO7CEBrwtz0URsDVbr7Xa5u+KqXlGzOC7seTkEsa11Bkd+OsjkpoGpb5MWs76
	 lKPgmhG9Z/7D3sN4drtkMmGYopJ9F14k2f7WwQRnvICTbmWgK0qZ1ScadfpqT210YT
	 gyXiefy/PbawiGt9/KSNd7oT8S1qXGLgrdIRrMgF3ekHU6dEiICT4E1cwrqYE5qnL7
	 6146siXmDIPAT90pFD5vxv5P4ofZ8g8Cg5zWolLacuOxq7VRymv4IcsK6SGSwDZnf8
	 eFRCJE+ckcrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56308C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991705434.10178.710398025860542357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c58832dd8a670a0d7356ce45c4a7fe279081ebd18b6cd503806bb92b1a46e4
Date: Thu, 01 Dec 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669917054
