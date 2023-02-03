Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6747610E6
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06E5CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675397766;
	bh=GL623GM5hHIJejQ33TG6kGoid/GSnROq3TzEpA/ejSg=;
	h=To:Subject:From:Date:From;
	b=oidaLTpgxKL55VZ61eRl2U+tyG+fA4BBK2DxbDiQjpFpXqWqS+kggXliUddhcsDId
	 /kimi7CsVFD+y70i7wMvvVq713Erajwfsz3EzRpXcLVvrZr8tv4NrZ13RabIGClwKe
	 OeldoENAfdBO+r493oqW4KEPQK3LHLhQu+hWbMAkmkqW3vgi14xftkwZ3SSdJ7FIl8
	 M+Fvip3ACgourdk8vUU3d8vwbN+puUjSdWAHkQmP/BInHMICTdKyPYs52z5T2YmvJY
	 fDOyivuChG8vaAouqcciQmK7qOEXalzqex7UqtbQLUetrn0LaAa0MparBl+wGApMXP
	 7gIiw22PoxPTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFE40C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 04:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167539776582.17678.4510881868279322838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a3fc752c43d740a697f3786872e230c09dbf708a9daaa01e1a6921aed5e856
Date: Fri, 03 Feb 2023 04:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675397765
