Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF6F1864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E28DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668405054;
	bh=J4qgKA6BV4SImoOjoVT7EWUhOTsMiwPqXfHTfj5pZnA=;
	h=To:Subject:From:Date:From;
	b=ERfORhXZrAXOYcUcakbbmnhjgCtecvrke/VkuetCQIXrZpYSVqGzV4HQg7IyOqHNI
	 qJy0RLolswAPIG75cgEu+np4PqRm83DlydB5+wGDugFtXBihx3rW1NeA12lb+Gs7HT
	 weVFUitpC23Ui5K/EqAB6eEJXlv/+kQS84DYWmz7n1STkbdYgZvGmzebaYxZ5FlDfB
	 OGWOhItlNXxvyGEe1j8L7cH7+lkcGxsSwtbRjn/c5QalrRbJlzmipCwKJRjPLFHKst
	 1/g0itp+VIUr/16/oxbfFzivitnpC1e7DIfVwsc6825LY+d9s3+ERiDs4DMD6aMsYv
	 KnVXMomgIR03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A00C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840505432.17961.18138339482721385085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b114af053ce4df970ebea577f1b6f76378c97a5d1a46ec6e64745953bd208003
Date: Mon, 14 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668405054
