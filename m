Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E748C139B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C519C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671517287;
	bh=5B8P7zlQCEivZ2ycRuB4wQ6KfEovvJp/4hQjFEZaBpk=;
	h=To:Subject:From:Date:From;
	b=upl+c/gPd/mOwMNpnA6pKy1QZ9Aop13pJjvjLzuJR/aRFgfdpSUwrQpIMWRiRCWfz
	 t2VTHc/RTX0ijxKDGG6UXjB4nlmq1aLYNmKwzkhLjC53jZu7i06qzQNYCuXkTFNFES
	 uOtgbGqPv7jgrLCmWiUPD0C25Xz1/GTw074qGUyK/KJYFhUXkun6+lwrHjwl0eyV+f
	 x7loWf+0qvxsp2p8x0J4iNEvxZ13BCuvPxsne+1zaupFXcr7Tzp4QxTli+axDpDor8
	 znmidcDTr3A71213LF1U6i5YlBKacg5aEkWArDWzdyPMvZnGuehUD5c0dRzklFszcK
	 az0AK3lYHluww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAD9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151728744.22275.6739658110319962862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc094aaa96cd4933bce0ab6ec7be497f8cfb155bc4e6f5b6de9e30da78099913
Date: Tue, 20 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671517287
