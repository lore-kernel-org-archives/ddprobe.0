Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1C128EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F821C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665596453;
	bh=so3F144/VF+HlWHNe6r/RxGwcB/Ub4OGECkhjr49S60=;
	h=To:Subject:From:Date:From;
	b=PrA+Hb9zEqKHQVak7HMpAZfMIB7EihUiEJQeOdfKf+1ITBGUTJIKLwX4Sxg58bq8S
	 QUkWbk+cP5cybUf/RrkQSMq8/WV0Y4GCpnHOXixhh7F3JRVdSXESpIo6+FquuQQhXI
	 y80MVauXtrbVdWIxYgGhcsw/JmB3d6RGKMDo7vUv3hKWJZV8TIxzlLzv1O/jUbgWs7
	 XC8ygQCqcJCj4903CXsKyBhmsAtvYL8cE7f9I56pvXQHfkWiPED4fmjGG2wkvyHFFw
	 xScs1WsfHQEJgFD8LcvioN0zMjmuVLsGQjZH9tuz4g3Nkp3Z+qqnAFoSgFgRRI1Fyr
	 Cyp3gZit8+HwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59272C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559645335.21324.15308651695084621165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e047e99367dfb70d719b687f690ce291b2d800ad87517326ac5a6e7cf78b35f
Date: Wed, 12 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665596453
