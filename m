Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF782565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AF9C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674813785;
	bh=QHbP0jdhfr9XJgd/33wor0mnR/XtagGpa767IgxBAXI=;
	h=To:Subject:From:Date:From;
	b=JX3RYLdZy23VF4uHXDLnAMf/eSjaaFPT+nEzS+cNRNBxfwl09nO8BGaU9E8eNjFLp
	 xi73BK9dI4qwMg/C6ZlbTa78j3iU0RUzPkxCHY3VYJDZztks2HfWa+vVQreGb0mq0F
	 6z8bhp1efiEUW62my/fLu9J9KDESwiMFGzJuq33bXUG/+N8oS5AKhyoat3K0HHxLfs
	 ud1b5oLdTi5UdIhdg8NquY3VyqMrfcYj2q7TS4Q8Rkd/Zq+b5k1USzDI+4zbsmx3Iz
	 29xTm0Gy2wtyh3RjbjvUeaIMroUT3z52/lrSfJDduBTt8BFD4BdIcVJkCtnjFRu7Jn
	 qm8z1qxqFxaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69DC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 10:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481378576.14376.15811679447452718323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc9c59d597d952118245210031a0682d6818727c957b5a6d1c5626b1afed177
Date: Fri, 27 Jan 2023 10:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674813785
