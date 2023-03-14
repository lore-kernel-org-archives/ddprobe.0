Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2578F69
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7522C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678805885;
	bh=uT0JZx+okg1zclvcXHrDsfi2+7YgRxDL+16FTWBUrQI=;
	h=To:Subject:From:Date:From;
	b=AUvGonXS7CdP8pigC3TL8cEYRx7tn5NFXrkqKukd8hA/fgDk802SqPIzSTfJ6jyR1
	 m87aMBB2Bi0svjRAgeT+Xf39tHTADErWvpayxTJQKfFarBVEJWT/4nudlX+GioVl1h
	 9v1LuByi1kEmRk1Nf8+1XoqdNoa4wgKqPlFYHQCcM0Ez6EILvjLLHsSa1PZNci+lNR
	 m+C8DydkH9mkIMxnAxCiG9FMi43lQkdPra4zfO9Iyb1v6vdy/lxDZgW5OIBbFzyHvi
	 xOHgX5ugZed6ukjfNnlVUgnCQO7/T3oHXHjxWuV2ETAyPpDz1wPbRNKkA/UO2WChLx
	 Op9SzP+MdyeWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A4CC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880588580.15245.8455197848557677567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2575e73d8e7956141a711cba76d101395ed988d15e373196fd3c50318d865ee
Date: Tue, 14 Mar 2023 14:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678805885
