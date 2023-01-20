Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCE0BD15
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E53C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674187887;
	bh=d4b7bTSx8Vpkklt+50UfAYylzlLqQrV2X78nX3dDJSE=;
	h=To:Subject:From:Date:From;
	b=rEI8yiX61Vh7AHcdAw8GWjqgi9jpd7xLabHaJtlM5k17etri7lDDTG/WDckVJ2uVl
	 G3BVbtv6gEWAKLO0ODcVP+k2du8FdxbQkwpglXaJ183wFK+flwVD2pqtmdAYLQPlmH
	 zNfUZ3qvQmMQLercFLJbtmJts1lwAK9tF+XNWXNatXvdAG4Qh7yxKzPDfejjQydKfj
	 LfotprzVeVdO5JHxX7avZJ6Rv5n07SYP4AEmuyEBojOzKNSLhBpxzuac5CSGarc3BT
	 zJo7GCc77ciW+E4reg2Mr4AO8jX4fCjB5QaVu1HZFWAcE1yNv8obUBP4CaN2UTPGky
	 3EPRuFJNMjbRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63045C38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418788738.8019.5185907030517753871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5cc83700210d8f28418537c29869dbcbcea40e3bf34caf9d648490e14a6550
Date: Fri, 20 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674187887
