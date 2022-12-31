Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77337E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F856C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672458087;
	bh=UcHtqVYeVGqAiBkaii9DKPtjFWAL8oKO9OBuDkTuq90=;
	h=To:Subject:From:Date:From;
	b=IvnkS6W7eD7UEQCK0rvVWvXK3rgnl6SgGlscVbIRmklBIwBLeBWbobhvLosECWgoU
	 gLwSN8fARRQFBvpRe7vmE05FPXaq9t9LEShnvzz1vaXgN6Q6SdZZ1oXelM9d7Gqhzw
	 +G8tqGPRu3mXGgrVAY6uEvkwXPPz1iJ7sCC5T5NVn59bXkKYdYxLjyEDxS3O+4ftar
	 k8gY+9h0PX+CZXUF8IR0RxahGcGn+3fVQ/lTnD9OkSnjjETaCcZVvAykw7ldEDvM8q
	 E4A87PpPh9gfDm9VOimGlx+s2jKdl8fRHOcTrRN7+aCqitczZdl4czg956RYCXE2Aq
	 lfFJpEQSpNZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EADC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245808738.5007.17589999460285547973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d37ed5d5063e7fc1dd10a587621c932b6aabf385bb116928ec11300fba7092
Date: Sat, 31 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672458087
