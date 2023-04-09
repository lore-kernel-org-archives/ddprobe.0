Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC928FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D828FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681076465;
	bh=vy17IFUOpLuAYK4TzrRPOwbzepPyZPuvHsSXOhIbVP4=;
	h=To:Subject:From:Date:From;
	b=SSKix1M4Jb6TBg44RiP1ZrTx+OSpSVa/tnVKxT7T1FNeLM+V6lVXQiXGBK2KllDRn
	 f8eS+Plr4GAVhW4SYRzxn9H9F8KYysr1HUM5ibSAo52H6TPaPoAlyhKn8DBmj049mS
	 OtqN0ixFhzPdjtnq0Y11nCrRWIa8fqID7NRZl4Uc41OSHv4OS7tmVEno7EKBU2drR9
	 5X5SQHCX5L+XHVznuunvIgkE2KaOL/HiU55zlgyRgunqtWqNe9nCmem37OPz7C+/EU
	 R0TCSw2CwXyl5ftmvoPeWZcyKfofDA7AqViRs3EZZGHAi5e8TCVG0GmTovVrYZLsG/
	 8g9xYwiuu21OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CD2C77B6E
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 21:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168107646572.12155.13743371604039081123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e951c750cd7abf2a5af6e1b00652685d60c700dfe4a2fb562f8132cbd9c81e91
Date: Sun, 09 Apr 2023 21:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681076465
