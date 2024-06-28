Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A111865A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719575663; cv=none; b=d4m3nuMeN1wTaeOXzwZx6vW1vd3YZS6tWG60MxKu9S5EGyidqebqQFd5fa2wIvBZ+roQJ9iKloPBPTSpYsjxMSylfhz1W/8O/aF+MIoGfbfk4muLiNcGQZzPgORb3OIJRC/cLDdXKnBIRyYYzZ2IToIEKPpNXHGU3Ak5bGr/4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719575663; c=relaxed/simple;
	bh=GwBQa0ZrRVsaGQ+h7dPBZjhj6xhe00IaH7o9P15Z1Mo=;
	h=To:Subject:From:Message-Id:Date; b=RmYPypOfMJg/+KnrK0D0AgG8YRa0FFXKgo9iKvtPfYLgmiLsI+eE1I0HfDQP2Spyc5uk21NqUAfjl4fxIECJMMXgxC5rXsfbmE8EtfLpuyoMwdmv3j0kUQqlofwsv+2HM4QfCfxGHhQKf0NiyMKFaAddGG3w2E/f4HVmvwjylsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYW91Swn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYW91Swn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6D6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719575662;
	bh=GwBQa0ZrRVsaGQ+h7dPBZjhj6xhe00IaH7o9P15Z1Mo=;
	h=To:Subject:From:Date:From;
	b=XYW91SwnNQ2CGUv43DXeD6iihvlNPXo7MstO2yqHuxFoLIOnC/nL9Z+pTAhQP61yV
	 XF+qgpvLsIHZWRB40TTRFsdk/bQDpc4t/2I/Yw2yoiq6I6e6L+cZ8zTSZbRy1X6MuH
	 uV+FUB0wirJT5NtVgmMuV3F6qR82rzXp589FqyFhAK9dSwU7AWLmt8UuqPXHPoZUI0
	 iYjXf9XvYnhEZjyTdf/N8d9IrBjPE8S22ZCzjdNydZ8lCy2mFHe9LOW6eVL5cwXG/0
	 HA7gumf5tLrF9+ID6Ju9fV1iMyfGGnb5dVuNo3ooMVGCaoa0haEeBwelUCSkykQsUl
	 3zfeEj2hExeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C923DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957566281.20648.15456996136181252789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6391c4a459a7d156c48d601a752605375d18dfa82c3fb6a384ee9095c95f4835
Date: Fri, 28 Jun 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719575662
