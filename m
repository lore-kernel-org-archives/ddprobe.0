Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8C41849
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66B95C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666841454;
	bh=Xv9lfLF8zBxTWAIxwJsrxA2W9asmmrR1eRoFNY263GA=;
	h=To:Subject:From:Date:From;
	b=aqWGmV15HBnGM8mO2vKGDvEz4MWYAVUpzC6WAE7mFsrvG85TqvJ7d+3hPslLtSiqY
	 HLPc47XoKZlpZ57MyptoV1qdPUp9sG/RVU1PZ7v5ZuABwMPJBeKrV89WucGnoy6IYk
	 +NradS3a7wg/gx2FGm0V8473bXOcm3cPYqeXVMfoWupDW9i+VuaVcEOgL5QPgal1X6
	 j6H9ymrT66q/hOR34iwZ1tI5683VnZdqyIgoNbWqGnqKHvcyYgFyDeJfDHXKnwAjE4
	 PqGbLJoLtaNVk3J+zI31f8UDTcy3jJoVVzCbRJPny+9KUf7ebI6utCQO9Z81vsxwdx
	 JL0Wt0RX4U0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B20C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684145432.14896.12442744378022828385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cab604ffb9ceaa54e8ebac2c48f1de283997a0672f73f59ae2c64ae1ea9dc8
Date: Thu, 27 Oct 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666841454
