Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7577E
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B93C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680573426;
	bh=JFHN0eZqMMG/uSOHrQND/4MZ3cRB1vtUIJB3HJ7mJ8I=;
	h=To:Subject:From:Date:From;
	b=b8MezfD5aJKXfKESD8nLv4J/6y4eqLsvjbNeomnzVYo1e51ufPLf9CVjabvxxPXCZ
	 jgZMrIoecGYPzOKrxt7+vujFAhows1YsV26QGYIL+JQpS7e86DcapA5vM0inCqZTqB
	 aXHDXjkiFmu02JQYjPTF2C8DHiUqZfvaNQJcdF+MetsRCoYuzrNPh8WugApMdMGv4s
	 eIfZlbM0y6IpFWzigKn7+/oAcrmpdB7Qty8gDSqwgc6sxkFqGdqyAYy5uwD96mHTij
	 EIBFwZTUMvBImIK+ezOgZ6SJ8j53Uhu9Fy4wiq3YfN+EyX1S6phZx2/4jIRQ+h0QOi
	 tD6Fwj33LYPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D26A7C76188
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 01:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168057342580.12463.12108630932812497687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8948c31d686ab80e6b4ed43ade68f9aba4937000a1cc57f521334db1395a11f
Date: Tue, 04 Apr 2023 01:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680573425
