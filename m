Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C04740DFC1
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774751694; cv=none; b=Eof1XfqyJVXhaYHDzrrX72L87CM3e0obw6miawCrsBlRWQ9MP78+KkG2mV3eFTBBKc6HtxsV5P0a7KO3Fyg3pNyEPP9X6Cp9njAANb7B4cFRMAbtnTM49lCjRGsCCgULVA37A8cM9GRVI/BJ4oiFKN18addxXj7+A1nVoFC85hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774751694; c=relaxed/simple;
	bh=U9qvWEk14k+uzWDJbiZVhsjfJPuq8OBPlmYBz8cOuAI=;
	h=To:Subject:From:Message-Id:Date; b=u4Lnwyl0UAFP/u0PpMFZTJg/UcS4C3etcBYc4wHhLlxv/DCsOFwKOlv06R6+4n7Y6H8HzxaidzOdMlYB87bh0KeZyOfVCWGrIZeCcq+zIJk+4MkaioY078wLhPuwWWwYc91DwDJ0n9sgVx9fyxaBMPzuhRhyP7WjooVZ4krFznk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIXLnylg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIXLnylg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774751693;
	bh=U9qvWEk14k+uzWDJbiZVhsjfJPuq8OBPlmYBz8cOuAI=;
	h=To:Subject:From:Date:From;
	b=bIXLnylgzQ6J5hCtef0hEB2s4A5Yn0UIzk0rHNEHDWPMAWDQhcQm1OKhkqX2gh+Su
	 CxFp5fTYiyM0DoinB3knw8khnMrgcgQePzfq6ADUVD4jfSt6ExVJF1DUl9z2anvtOY
	 eWSBqF1B9YWr2Y5e87UGGPAfl3QS6XIiRq0v18UOlGPcACwaIjOX6zQyYIhdlfLPAh
	 vrqW4xHD6Gzsk0U62YvBIC1Cos9j3zU2+z0PoslHrNajs6kecpkUoGHPveKZxe5AIl
	 Knq1shYB/BtzAEpzN1Gfb3aC9ZOFm2MC5+nOdnPuuAhT2e3LdBUuH4viSJOf1V9pYN
	 jq7UljCd6kKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660210D148A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475169358.27570.9687877271228996062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3c5bf1997484c5e70bacb2fb4060050a4d769e2b4a2c8a07b3f646b68a309d
Date: Sun, 29 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774751693
