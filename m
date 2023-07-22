Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F05027F3B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0196C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689999728;
	bh=9PFRMiYSWFFRrLAuers6MlHFyBJ6ctkFrsm/qrYLgRA=;
	h=To:Subject:From:Date:From;
	b=f/wWy6BP8IjwTbJ7/+pkFeH7J1gq9/jQ23xi5x/YJVs6LbwHDLnjVlB+xpUDVNyOv
	 HojMA+KL3AUAPiRy7oybhJG0bWZfxsLUq473jeln93v7kV6gT4gygG9A4nLzyOnTF5
	 Tbi2ICaxqBNJGuK8To4VOldFa+9hAn39jEdYhsrbW07/YDvmC/IH+26HboIQrndj+i
	 YQZsC0mPRzHCOlkimReci87Big+rn8J1q/7eL0g2dYJyB3XraMHbtmWI0MMWtxAOV7
	 iS6tH7KefBSekT9T9jry1MEJjgyit3ImQoqENS9/oUIlnOKBN9LykOLNtcE4khO9yk
	 dL4TNCCWEWYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB217EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999972875.11765.1290347219715868885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4456fc60f8f0b184034cb3905d504d53b6aa81082d755e9a60890376d572b750
Date: Sat, 22 Jul 2023 04:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689999728
