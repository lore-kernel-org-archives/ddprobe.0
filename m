Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53510185D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B70C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679375286;
	bh=FfmdoTEzKdJy2symoqGrfJ5gK2HQydOSjrxWAdAq/a0=;
	h=To:Subject:From:Date:From;
	b=ID+5T4iCjryuUnpa2BeyFon6oa3k47I7rPCrR89wlxzA2cilIH5cPfzkmXAyBQs7X
	 T4SdK/L0+Q1gTI1nO+zgrvemjK5dGxoGGelh1VNkSfDjTiCXjJDkwbiVAXb2VIfBrc
	 hPUSy+Q6vPB8uKYryKnhsNcuGq1okQVB1HQSG+b7KZI4hv+sG77axKxNxTZI791ct+
	 vjC1t1kCWPq4Q1L1rVh0X+XbWL1l2A0ESouOjEWF24Ff64YPJkx2wsXZfCrKlfWdSn
	 uTm3H/A8WjWzHa52ffiVYtJ4xK5n/INxtJgOsy2Avi8fnTGn7c0LTyxZEdt7SBahFl
	 tzF3BJnE8PiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB1DC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937528589.14863.8122043218576613403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ab7aff130851fdc62858cbc54bcd82fa0414f012293d9b5560692996f97dd0
Date: Tue, 21 Mar 2023 05:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679375285
