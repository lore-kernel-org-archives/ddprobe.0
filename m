Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE38F2F5B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691E7C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664982653;
	bh=dk/NAEt1SBs0UYe99KUo0/jbcvecpVdzZ2RRBgjCgPs=;
	h=To:Subject:From:Date:From;
	b=Xu73H0yH5XS9eAnucxUqMcF1DLv6L49k7hLPNY8tSOMgEsLlch2kNMTQD5G1uqLti
	 AQ9gFtqHZjmzhGEjOiq7aOGoSUelON9Lix+v9KwUBvWr/3YeAOk1AVFo3pgxYdM9Tr
	 g0ftOtGdyNZiH3V+gllZNhD63XOH5rpgqRhPpvrESdmKlffROfu8Md+IFIpkWZm8vd
	 d8DpwD1yPjeaup3EtxKPLvCrgK6XEl+e/pmU6OVQVfakp9QliE1ZZar/kl2EEbx4fL
	 nYXK/UX8/Ffl/G3CnsC8OZWFLWwYeibPcMME8L9N4zaD8hQbFJFq6QjuiJPohVBrYx
	 9/+O18wot/PPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525D0C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166498265332.19981.8756203961168718957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e653ccb8e65d07954af5eec7dedec8e949391e39c0fe9de8578015c0edaa313f
Date: Wed, 05 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664982653
