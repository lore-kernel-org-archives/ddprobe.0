Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A9EA920
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F5C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691232788;
	bh=28ezDivpdgBbYfRcEzSejLCOapJ+lF8wOguKvUFlB+s=;
	h=To:Subject:From:Date:From;
	b=OtupP6IA5DBzfHFD+oQI6JN3jPtKbpJrbzjVeNf/BBvDP2tZjAeaRQgNjKNCUdzgV
	 u3OAedpEiCxWR6K0ARqO1N5eI/HeiYu/rPCZ+Xsl7pz3jKiY85S6JT7lUWEJCEaQGI
	 thEXfpJkpKPyuhnd7E34Amc7VB+hmpa3LdBe/Vw8244RZaO0ausiz7pUGDDPvn9QpH
	 5Wu+Qt0D7u2XltgnlHEe6CxcSfSaqlJ6hdv63KQlIKCM9+y7fOeAt05MEWkZhKlKu3
	 ht7gUiS3qx8PG4IVOQ7dsNk6ULhDCvO7Y6eZeS8gFJja+ncOIXtO2qNREQHVNuvE2+
	 4SylQowDxiJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFBFEB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169123278866.6346.9753962273229340030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cdbf452d8134c3561776b8155e9fad102c60a587c018613594dd3772b556d4
Date: Sat, 05 Aug 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691232788
