Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0D0C2E4
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3B12C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680940866;
	bh=LEqj4yVBXrC2u+ZUYYg0o7rosOI+xFqAPC4T6l5D7VY=;
	h=To:Subject:From:Date:From;
	b=NbvgKAG8J/vAwjzl+lJds/47HmhzgBPLir5FQWfBFrf25sO9pEn3yqehhqe5Hayg4
	 B5j06U7zqQAu8KjgKOGCJEX7v9s+kASDoPFM3H9cTa+L8LgaqBjNBGFgCYkDfyailv
	 BqXTJHnbeE3XoYX33Y4ROCSGwjDcT/9Q1PIaNk0ET4gXvFMI+87+wU0LqJZ+fun7rj
	 ArMblMHtt6JxLqFgfBUcVX/cB0Jp8zqWJM4X+yzBmK2p391g/H26RpsJTciGEep8jH
	 g7q6JRLpA3XGtkadj+VFJ4c4UCT4io+zvj4W2wqyECFhqBSLyZNi2CWINAH9Q6XDCW
	 YAlvztrD+b0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE64CC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094086583.31779.11998360065859840053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab8bec4b3477b0e23bfd291a4e7292e5e48c5005344b940133ba0634b54d24b
Date: Sat, 08 Apr 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680940865
