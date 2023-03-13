Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A5528F2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 15:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2599C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 15:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678722425;
	bh=k+I7LkVHHDzuEKn863n3wRIc/dM1Fi1GK1rL3kX5dco=;
	h=To:Subject:From:Date:From;
	b=Epb5sm+gGI7wokbCegh2L+rGWONJ/jwAxX5lXAa1XoOHPfpJV7ZSGT0QcAlK7Zo9y
	 xVMtdTQDFUXGPC8Oh28BRco/I5GJN8tdey6OCK0m7zG7C5q6NMisaYyXl9JDuLHRM6
	 m36chwc+Vn5w9E0agRhIg4Zmdbp5Cg8+jW5rqRQOrCCkks7DlFbJEkRexPFMcZ6V3t
	 5BHOV6c4l4v/Y8Urbg3iE/nhdcLi8IRiJa4ZvvPoInyyh1CClBxae3VbZqPnuKsp0X
	 oRrC2QId6/Fisg7u/bNtRWtCZM3PFcnYEUw9RrZof6px5FTHyzJE4p7fWeDe/zzbnU
	 ILDQuVW/DyN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4271C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 15:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167872242577.12929.9824619286609899974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92277c047d082bdfafb6614b489ade75e14cba5e90c43884873f7248b4b28bd4
Date: Mon, 13 Mar 2023 15:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678722425
