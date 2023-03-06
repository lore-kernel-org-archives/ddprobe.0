Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C2A7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D41C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678069626;
	bh=EeXv4H/t+HVn5YoGuhc5c5kRHFE8hKmyKCuV1QWmimQ=;
	h=To:Subject:From:Date:From;
	b=Hra8ZWtJX3Rk8Ze8poVCDjl8RRnMEy53Hra8gz6pTpd4IKuZ1eMoMKEOj7F++iK8d
	 AiuJkDGbK90Wek3NxoaWNXxnpOucs6ITuTwbIaz/ArAOKEEMmZI5zGiftDrvMzshir
	 mu7mR+6BHNCXCxlfz+X2iKfkiVETKVekJA5WhCKELYhenUpcjEWXUPzOWYsgu7McDB
	 McmzJRkAI3jU7SIjZoT7+5z+SQqBN9QjwTw+DSmahO9lOJNRMAy6id2HXQ4VV3iDg/
	 k3HKQ0gPl3U37RxkVJTaVK5pnqV2wmW/1GGEtnqGDzs0Q3C7QjtHxlcpMLda7iOZzC
	 tM2TNxMKXBt6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE253C678DB
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167806962574.9462.6796339136827347569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e30575aa382e3c9a3d91a564f727eab0ca858a930c96b97b1eb3d6a3ea99d6c
Date: Mon, 06 Mar 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678069625
