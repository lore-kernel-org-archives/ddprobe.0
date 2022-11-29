Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA9C36B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B4DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669720254;
	bh=6ScVyxOvDCjwqaPxw5f+KxBUqu/RkgjkA5iWgJN/+Jk=;
	h=To:Subject:From:Date:From;
	b=YaYrzqxfCkp9YS5rk+a9jTt4927x6x4SyOlAu5xl2HfqgWcd+eMx1UEAhtASLpx05
	 O9ghnJr0ktrUE7HL/SeKopWtBzVvM2jU217ftRB4x00UOrabPiHPOq4bifTKjzSBJv
	 TugJbCzg8AkXf4WiaLDylQc8E9oiBOkZ4Oxdd3NneYXplWDHslmeYQFhBej6zCPNph
	 fLvUAQNUv18/xVz4CSIoYRUkYGsSYre/9I4R1vo0wIrM2egYylNarlWpy+NcK+Fh7I
	 QeQXiugEZjS6I5SZ87x5PqQ6bqj2uQcoj33La0MKg52b9Q/7FPhD3vKOy2tUMeQ3Ek
	 66X0W5MF8TWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBD0C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972025436.9120.5460331231245156260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40657fcbb9f1334fd20b7287e6c9dede7802f3dfba6f5cd7a537076bb3b3f419
Date: Tue, 29 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669720254
