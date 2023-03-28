Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37637E4
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63D3CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680042846;
	bh=zKVPd8d11qZ6wvNBC5PbNqVwkb2sQxzjrpDe2HwkSzY=;
	h=To:Subject:From:Date:From;
	b=fVB6BGcRrqlQMraAGrWSTG0NvO7Ls/OyP4N4xJeWgq3kBROn4YPIzySVuw+zCYZJo
	 DYG8kjd23IhV9rP6iB4kitazcn+JvHthUwMvTQSRfqLxEsPcR1PQLAjQ3oAD7gKs15
	 vGQnn30mxS7uq3KqhVZAVuxMtVhtN3KpDF84T6IyMt2L5Wcni4lEZMUlhIC7oGuJc3
	 9KKjVzFk58VS5JzIJ6gY559MR37degrr0DPEwZuN9mv1X+k0RwRsqa7vK7j5m0yA+h
	 ISdjwZc8qTWQMjqaCwQhX/kW+8zJjg0aE/b925uuto3Kcvq90czjxKD7RlP+nBHFxf
	 M7VWI1LH7vKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3727CC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 22:34:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168004284618.32096.14523919440601640988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608c573b929c69e613d7b1394bd082361291b4bfd9886b7c6c5a30f6b7c09740
Date: Tue, 28 Mar 2023 22:34:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680042846
