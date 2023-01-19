Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA72B17CD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB66C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674133887;
	bh=U0aWdUjuc2Mir6g6sakmbs8WjUfJ7iitH1Fh6xZzcbM=;
	h=To:Subject:From:Date:From;
	b=WEGPSZ8zDSyj5yXYeNG09iu1WdRWVMATXAmEBJ7UaCkHJy3Rm3NU0ppUETZvY8m0G
	 lly40opadvCPZkcqcW+omhX5Fz57XL2Hmazfvi+clYS6UbR9gvqKFNvimvXPdAJi0m
	 gasKdhOhS7ZKpFVaHQ+gMRgHkrWx643FwnUgIlZXTgpbBIZ3YDo33lndlGn9N+6dFe
	 L9+gcLMVBYLx88vr2QvdwpgJoHMzQ8OJSROIN4UldYPWkdBgBh/CUioKGXmwE4VUXn
	 TmB39YcAgoX8HMicI7erF9yxoTfInGW4Z2Ly5CJVHD+vvaG3YWA/nX90bU75/S2wWI
	 QBY2Se7DCfvrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AA4C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413388740.16271.6417816149928235576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec0ec5f4c5e0ca7967afc9b32e5ddd0e88eb0a737415ebf0357d58244575526
Date: Thu, 19 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674133887
