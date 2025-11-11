Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C14F33D6D1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762892994; cv=none; b=r4CsWCB9HSzOubveuBGDTQkOpW0cmzgfY2qSG6YMyJxWyoPRYtJtdK35MEh48WfDqzRDpTa0OGw8dZwt2Dcus4Jb3cFOZzCa7kZehhI/yVKDpV8A+c9jiZcyEsa+4dJPLt+x0Q/OkfGK9i4fB0T9GgNPZhyYwUNcCmgDWiGjB0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762892994; c=relaxed/simple;
	bh=Z3ytLEuTQx3zy60gMipVNTvCBIg6aDqmXw38+oSXouQ=;
	h=To:Subject:From:Message-Id:Date; b=vCd17mq8xb4nyBfo2oEFMWKH7E3fZOGNY9jqrXAf9nuAPd+80ECqfINo08DZPGp7vqInZDt+rxQyVp1oNdSxhddYgezoXtIp9fjQ+kfo/HI3N2aUkjRBHaP0hSVDa2Unt/mNyGJ7Yzu8TT62v2KgwyslOkzagAJeAnfPSRt5EZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FafQ5SbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FafQ5SbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F06C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762892993;
	bh=Z3ytLEuTQx3zy60gMipVNTvCBIg6aDqmXw38+oSXouQ=;
	h=To:Subject:From:Date:From;
	b=FafQ5SbEVVTx3yOaL5Gsxc/47QTVbUIqKZ88FUkhxCrLoncRlvS/ulLLOwz7HWROa
	 TUsTr0q26HdKpEvhEbbIJgHIa3XOFxlyEpQU66LhDGAj8qD1SkxWVkD1jnMswgcyq5
	 tl9QMvPDtPoiMhoDpbLW3HQjVK2rOX8LM02waUgjIOVcTceFwmmU58t89mmMhkaNXb
	 mrjwLN5u9t6oQE2QDxoQldIXjdlJ7AifzSjpvMAf1nW5olpfFSvE1unrB/KpMp1dUi
	 QP812/+ifJbr3ajAPcLAx82GOACYbMngDffdzEArSCEqqD8sx5OqIy7vml90vQ0wpW
	 kxA9Neik7DaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC7CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289299358.17177.17597258273015568026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691f5d045fde7fb23565dca44dae8b4272e4dbbe3af389a14468214333c24be3
Date: Tue, 11 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762892993
