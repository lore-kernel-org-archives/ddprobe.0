Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFD13C3E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80104C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674126687;
	bh=+lYzS/TyziVAFKg2n5AH7rU8Bnc86OgE3CoH16kGxoo=;
	h=To:Subject:From:Date:From;
	b=nW8sbhbu3XFvlMZC7ZgZPZ+UrJKS+RR6REt7ReMko0HN9smFlO7N0iKGM91gMxfZ4
	 QBoJtAjzAaMboLnQRMOUbsQdzwJp1txlE8fZM28fnc4mcAmjAPPjhRhvH8/5HwYjqI
	 5i7gJfzjC8HHqt7aBAKyEM4b1TfkzKgJM8/W11zh7C1A4HgvxTifSQN06ZixUVY1zJ
	 L82doP3vJufdFle6WDpWJwQy2EkDW0S8s75ZBe4purgOcRzes0qWHqov6Rf/ZmUOj8
	 FU0Lo0MOt3bmNGbSI9Kd2F07fkZuqXxnehzp51RUAtlAP+3pIVEY8SjuwjNxpKwDzM
	 cZ1mfsX7d+XrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A34C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412668740.26006.925269091525641090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99a375e4249e59038dfa3def32120687ca1966752d20ffe9278c1769d791311
Date: Thu, 19 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674126687
