Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4E63239
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12335C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675340766;
	bh=m8OMBNyYQ3r0BYxuz/m2JDUaNdk8etiM/IpKhifuU+0=;
	h=To:Subject:From:Date:From;
	b=hEcYRZaVL7EEkZOcf8Qscv2b9tmMtz1kgGAhVTsfJ1NGgL+k1XUJ7zSq/6Ba60BII
	 JH45kGtvX2ngkuB+ZHnArcXTSlBq0fLEkAhdUHE54zUboid1ggOAvNyFtyh5EkNKub
	 /piCgQvcRcTM8B+CpUkrYDnz3r/d7J3whMnxWBPjFdDCNlmWJsLzu4EXXdqrcL+Ebz
	 GU1fFyoRffe1i9vbrRP44fTPFEJO363LJbyWwH3+aZ9yhOK5+Yzk5V1cwtFLJ0EKbq
	 Mo8XjupRKNKrlihLT9sdGN7uamSlaJIFJ/6MYSV105M3hcbLl7Ayyti823E6x6In6g
	 4AlOmFXK5M77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C40C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167534076589.20018.7716630869558485445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6feea5ab07a0846cf91f4bc280c416ca33469953ec2940e03f2c535f11fbb349
Date: Thu, 02 Feb 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675340765
