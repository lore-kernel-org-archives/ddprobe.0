Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47DE1FDA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3BFC433CA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686832748;
	bh=poV4p6Kq6pXVmtwQfXZOsM47dy7hhQTaQtcvWjA6r9c=;
	h=To:Subject:From:Date:From;
	b=m3HlvoTGpBmOIHzQPEA8SFWKVgGarnX/LW3AeRGs16Nz7EWZMHd05+gPdmFluaBtq
	 Ouol9ebAYqMmOu834EzHHlarKBWXbV9lVWCJbhBTW89lwWvMAu7thByTZR/gpcp/1C
	 +jG8PpDtxh7z/zCzIbGFpJt4a/ePmCFdgfICIaaU9CkCuOGbK/DAM6uqtQyYd7RLwn
	 io5/F0k/qtKYuMuDCVrVIo5/gwm0ZAigWWi83wUC4CQwyFUN+oQ+FJjs7AF+jom5nX
	 VyiyHZowUuWRaCay8JIkL6JEulf23iC2D3yPavbeirKxUWozd507LLvel0RMLVt+YW
	 U90G8rF7KpqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5135EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683274866.6022.16035491554670721654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec9b737f382952dff9d18a5a94019298bfba53df84883f7a95b702b0e220555
Date: Thu, 15 Jun 2023 12:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686832748
