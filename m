Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353861E871
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745800795; cv=none; b=XhH7x96m2Fx1cCzWNyH7ZID/yuzBN66+7RDmZ8tSyzuN29jDkC+xmlXp+nbRddZD+9qhYi8k+LnV5TPKO+lvGp8uCtedUQZmkTS5XPcSqMM8jdV9iMx88xSJv8BD4bPWgFY8VS/HgfnrMXVoQwE/F9LdC6TKIVqahrEGYYS2zSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745800795; c=relaxed/simple;
	bh=4cJGZ7zRsyRCODGZ/rfVgy6CXybEqZYqSwORcsQj/Sk=;
	h=To:Subject:From:Message-Id:Date; b=WG1hPoL+fajdO5AYI6IGQlI81PoQd7pnzBRhUnDn504h9GWXt8OY+n8JKebZmlSkwsiyfisSBPhgLWnqvUU66HRf1FQ2I9/qhXy1/UXKc5K+ICYAiSx2LeTA1ZYxoH38uY7SEGJy+FVhYnFZMsDL2rs1pRCYbwRFI3tE9AxkzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVhzuR8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVhzuR8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745800793;
	bh=4cJGZ7zRsyRCODGZ/rfVgy6CXybEqZYqSwORcsQj/Sk=;
	h=To:Subject:From:Date:From;
	b=mVhzuR8yigCQjEMbJ36bdLqpIHzcci4k+MVYWXsX0GOWv/jmOFY6DKdAdCX9l/3KY
	 PXBji6YhnZi3RAfYXO2JAYyRxL4Twu8iEsxAPTBT/GyR+KGDJ1Li+FJMNikNid2TmW
	 dXamq1QEfJJOt7uNahXQZU9ONpJ2xDzy3mWQT5x8eZOOhuTdO94bkf0dG+j3KsC9sW
	 7zmYoMfLWJFWCxq25m945Od2bWM+ucEoMRREKROlNhQyEAjOfymJIrFmPrWr5c8nco
	 2EBz5VzJHQIpjcVo+OnYg9zlEuNtNip20/iS6+XmA+j1bWssitIMQAUhu90DFSnyf4
	 KWVgUkuIKvW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91195C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580079358.7341.11044666538414182877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32863251d595360718c13f5e228aa74755f1d45a8dac140569cb7067d6fc00fb
Date: Mon, 28 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745800793
