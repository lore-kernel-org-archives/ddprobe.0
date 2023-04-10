Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBCB2598
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC836C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681116726;
	bh=Y+yvjcR+0YbGB45Ya+6x++QXqBx6uOVz5e80JRXXjD8=;
	h=To:Subject:From:Date:From;
	b=anI5uFeCPLnI1TRcbEu808Q/h1aK6NtLReYOuxWRNSrxuk0Souqq1+4Bsyr44Zld8
	 cNVJ/GBB58WOErcA7AH+FR2EyqSUbC1V43yeOIVMIDb4QdV1bHUvsE18i7ameXwUvp
	 JL5cCoZznKeQ+x1WAtFuFqElDSD7G5gzqMGV5AOm1eWZHsECV/QNO2ZAYqp7lKH+OL
	 SR04NrGJJqizrFINwwT+KZD7prUXv7MPXXACgKZFWuK/uWkewT9VD+cuU8NddBHzrw
	 I3RLVuZgQ1IyD6LRP/EY4sAXBEKAof8hhVibj7P2p+KrDT8xR8Yi9kyQNaJ46iAJzy
	 6oOlnStYGCjyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02D5C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168111672584.8688.2620455933038011528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49cf89827509651c4a652a37f62279d1fad4ca3603c8c316095aa18c12c267e
Date: Mon, 10 Apr 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681116725
