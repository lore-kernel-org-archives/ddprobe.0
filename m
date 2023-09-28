Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5105B8BF9
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 22:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BDFC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 22:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695941168;
	bh=8+RzBohSpQ6L/nf9qovFnq7KoWGmXUOky8niSwuX5g4=;
	h=To:Subject:From:Date:From;
	b=DyVdDQpMQyawUF7XiFAsu+m92DsQy8h782gKK9a8KH3/RsljWuLzNWrBf/KSVdbKH
	 CLLEOiZJL6+TTw/12m/QFpEkb7ZUx7hXkM0eh56dpxzff5ANMd+WAQ2iZZf3lK/x21
	 CTOTt8e8zJKPXIlLD/tBXFXe88qYGaNobsYi128MQXqqF7+dbQV8pOO1Ij/eXMzoTC
	 74JIGe+wOyu0aWlLeLaKg2VoGrR0Z8aVNdJTkUqwlrh5Tc/Zn1XCv1/m47UALsSA2a
	 EXhUktYvcu100GBmRichCvY8eZeZwQpKg0efPZcZMP7of272JRqrxEMhJs1RTTXMLv
	 eZHBvK/xjQh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA790E743C9
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 22:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169594116868.7516.17418899187123434895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656cc4a15708207345853f7840e5c5441f202be212103567139d00dfaffee70a
Date: Thu, 28 Sep 2023 22:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695941168
