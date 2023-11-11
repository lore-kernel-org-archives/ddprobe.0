Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0271C1BDFA
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb2htFLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBC5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699726096;
	bh=Ll2/EU2aBjLP7prh5G3mgpInqBkqypms9ayJWKL/M/Y=;
	h=To:Subject:From:Date:From;
	b=qb2htFLiCcQStVC71kCHltpLS/6Qej8fGMqyDF8WoyDFqu9cDLK8Quqwi5E5bGk+o
	 weRBplRUI6zIshBzeSkXl+/aBgtL6TI9/GIdsGin7XWoZxBDB+qGSOkZbqmf/0HLnl
	 JD+tB+5vspotkxXpupU9YR6rXOcX2Lor1Yv9YVLpw8Upd3aWFm6rVJsn7qBBWSQALo
	 myi8Oq6Zikw1k4JIQOorChQrto8Xwt5QLr0voTZbGHTQctCcMLqlMlu0vsN3hulNop
	 EKQiK8i0U1MZA89ksnUWd9ShuVy96ploDlD9jWL55v2lNuF7vMqVbT+i7cEte+2TLC
	 By+LJgqF5DcbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4C4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972609643.25273.3289476119585000750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1bce365249186f8f424ac9b73e2c25ba2204016310812ee91319bd2094dfc7
Date: Sat, 11 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699726096
