Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B1B522B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B9EC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686662765;
	bh=N2gRsVc7IM5+Fc1NJBsrpgeISw0t9P7S9U0Qfv5QVJk=;
	h=To:Subject:From:Date:From;
	b=bEcc7iZsZBXkcgP3meyCc7tDUgoLjs18C7hhPlwRRXlWkqX3bXsKEN4xeJ7KrNu92
	 ucqWphzZvKnpmgEHUVKfmBZsQ9+0XbecGFN+q+yVnlukhM12F7uuKhtxcA4TYgLAaL
	 TBaiATak30hhv6s3Vw0vZlCnISq4WPQKi1MPoAt3KDxbNDbWy/YnddiSGHBsBpwrfZ
	 DYNfLS4rGc0++Csy0cw9zVYdprudSg8I2vR4CerUutUHfxkuj26X43biXwWV6q0/As
	 xzunGwowQNaMAIBs+4IqfQ9fIRizy1a1gZaXEijUbu3MvWWncq6ZI6fgld/3Coffru
	 bwj33sSyAt8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC48DC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666276576.20850.5619907557121829371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985f73e1afd74d8eaccef16aba6980ccd106a6151ae05c9f52124c85df706db9
Date: Tue, 13 Jun 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686662765
