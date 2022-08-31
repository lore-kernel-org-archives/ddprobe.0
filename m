Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984702568
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7E9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661956853;
	bh=2y7j0czRDM8lDzsY9VanHXRlQ8zCyTTk/08x6w9+4DI=;
	h=To:Subject:From:Date:From;
	b=QjGAJ39TM5kY5QqsthTSjzrL7Afx9Tkyl9JHLdpBUu1n7w78TsgBS8kufHGuUGuis
	 q8/Xx9h5F+zQDDBaYAown5V9+1YAW5jN96kYCqJc1O2sExbRhVZ8IClLwjCwBfxzoV
	 pvvf/0sgfWlhvSHiI4Wz8cqig5GOxljr8zIw7N5s5wPfaiu7zX5S71mSH1vwEpz2Yf
	 0MC4ZRU9KXgCoXB7q84Kuhsx/t4v65NlkutOWQTvcAXZr5CIgznunNCghpnUuYGXSp
	 74dHvaaVOOqLIAb/B/IWnjOHHjN8elnoTaCTWxdl9FJOzQz5iglwpCA9dZ1m0iN/+v
	 KFTdIDAkC6w1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A4BECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195685333.936.1660077053494035737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbd9020698077b26766dda8c50582248ffec20f3b5f2a7340f6493051e9fb7b
Date: Wed, 31 Aug 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661956853
