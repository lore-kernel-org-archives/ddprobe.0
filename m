Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5933C63BB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD558C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687126808;
	bh=e5aKU7oIr6J2lS1vIE2BGsu7knesVTgR0Ce2dXkzxQU=;
	h=To:Subject:From:Date:From;
	b=CEU0qGsATZzXrhOAx4I2j/ObGfKiEbV1B8xS8yJUDchl21vXjxicltL+Y5AslncGI
	 Wv6XZZwBCmMJHrZAhHbi9M/lMeL6UkmZnZaUiT7qsr6wOPGDiYct+EQvo44tojXrLj
	 DOYn5gswBEhMA/bt7EKKuJjvc6+FxN0enxDEqG9s+kkWWTYILHZ7gOWQFWHhDCvN5m
	 a2mzXenAN/r3AmxJmjGVflRtJn28Z/uusFTKGR4jRZOL4/8r9sA/7JiXwj2HgomAsc
	 ck2sFCQ7lxy6lCu0E28I4BQxtXpZ8+54pKoCdSOo+Lek4aybXXeMwsGmL8FJfuIiUh
	 uupAUko5pZFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D10EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 22:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168712680872.23937.10534198766744529905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6302c5169038cab589ffe8e0710cfc3c9f6bb875c2ee3776c0de3334de8d7a
Date: Sun, 18 Jun 2023 22:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687126808
