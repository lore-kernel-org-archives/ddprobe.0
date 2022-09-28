Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60614A11
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E44C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664388053;
	bh=jBv9OXC4k2XWdPXKY3kpexGUl9vwwlZv2RIipC9nnlE=;
	h=To:Subject:From:Date:From;
	b=KtoczbyKgK8bXuD0HqVO129NE554Kz9PGM60wJzpgNTIs6FM1IPsmXUB6wxlVFtMK
	 wyBhrHytkAH6/umDuZ4lZhZiGYcpvyGTNjD+ft6QKwsxfTcWDNc3aN859duQBJRsOH
	 KlmdGi0Jtpc/B5cUBjPxiNJ85oP6Hi0NrOQ7SRMafQ6rHBOPmf9B2xqf25k8aTOMyF
	 jv30tLRqK7Hj5TtjDcN4VduicVk3ZQ2bwVv+4ksN1ChBx8ugGb8KzOEBW9HIKttGmE
	 oKd54CEAmh29nrDUuG0laKwGgCLvKbDWOSHaxvSK5WA3L7nYq9qyu3FFbqeFYkiTpz
	 1roDnr9pZKNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5242AC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166438805332.1239.7330949297093381017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4921a9167e11b36735b9f07627dd937d6b37d3053811feda58b9669ff024542f
Date: Wed, 28 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664388053
