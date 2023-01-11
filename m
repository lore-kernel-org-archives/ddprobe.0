Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E49117C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B061DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673401887;
	bh=wIvUC0zU6zpfQ7obExan5IiETQ8wpPN3Eb5kLKDAm+Y=;
	h=To:Subject:From:Date:From;
	b=rIKYy2zJOpE6zPkBlHepSM+3un/5QhezKt5aHxTj7FLkY65+oQoNRzS+2fZG7685q
	 bQFZmgZcw+5ciRB6QFN7sHrswzeFJAwpUfCUqUn6trlBYRm30kT1b3JJWTl46CX1oN
	 4JNBf/s79XZOTlk6HrX164sw6a1ozYKLTYiCX2Fs4N1+Ajt2BmxjeSSBQLSpEtayc9
	 EaO1ULWxHtmBiajMX9ZfrB4M4WIKKgkA/FiUjc6sA2MObd0t89DLZgMHwVKt+EEk/q
	 0cnajZQgowckuYQ9rbxgEblFkrx+dWoAngOaZCIilLa2ey5x59UKgkMjfNn5DyTuDs
	 z/hRpS5YB8z5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B5C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167340188757.32492.18171590621061692453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e461a498f85061d80086be69565f2635f34ba1abd5fca60232698a40334cd1
Date: Wed, 11 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673401887
