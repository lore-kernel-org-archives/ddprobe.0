Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CF6EB8
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC22C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672207887;
	bh=jRSBbvG+WHYywK+MvS4HT0e/xClo9lFYsDIEZ0y5FTA=;
	h=To:Subject:From:Date:From;
	b=roWpA9SIjwFt40AWSDSwLi6iyD0PUPukmqrzdQtP8N8ydwqfyQJwb/qQNSlpKpq6N
	 Zn38SQb88n02/sHekFQAGSKimTSxCvJ3VI3zs6Y4PIKT49ojLdj9FtC8YDS8kwOcoN
	 TtPtHXm2r/gnnJqBbSNKt9xNyjW51Gm09jfhwAFp+YJ/Mu1a8fD1UqJWsw3u8J5RHW
	 3aRL0rGXmaIgtsXL6/BNKpeY7taUaRr/iwzvZybcGcPM4asTEssQiXdF4XxB3zsmim
	 8igC9Z4yt2VAHqM2+Fcm9pLO0TX3EoCV+GE33ypY8ed8/UCmElzTjgEyXNqXpSbleP
	 WPypDaIYjWZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF8BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220788743.29040.6941590499359315596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1c8d760ea08705a477082aa60acde5faeabf2511907ec94faa1758de1eef00
Date: Wed, 28 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672207887
