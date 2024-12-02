Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B1817E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733140554; cv=none; b=lOK8v30kWcjvBs6nooconUVXLgynz1bkOrT5L5fLQIxzwo0l8IMpFLMpA3OMNX8PgmuEkFIRcTSv45OHpJennTTRyt/zt24h6SRCvSNAGlEiIFUBNzZZvX0vX4vWm9MKl9htVG0iBj41XYq4rqelkjd3ab62YTOlOcmo1kuRpqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733140554; c=relaxed/simple;
	bh=si7oX5U8qKVu1R9LnxseZIm3omHmoH5xWtyAbYiUYEk=;
	h=To:Subject:From:Message-Id:Date; b=XsNQYoRI0BqVe2qM5v2RbDbLccq8/k83fuMjlQ7malHQwRlyP+44j+tc9y4fikccp51oVl+4iexIXUWfDRB6vkdXhDJ3VDgEctxg0B6jjuW9xIIF3h9wVgmC+9sIhG3dqTzQNCozXEDY1OssItDvjcA/iwqvF98RrOVQt8Z0FnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNKVYFnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNKVYFnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0B7C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733140553;
	bh=si7oX5U8qKVu1R9LnxseZIm3omHmoH5xWtyAbYiUYEk=;
	h=To:Subject:From:Date:From;
	b=QNKVYFnWdgCY6Z+OkdvJ3RwlMqZD+BKBSMfwqA8YnrbJDpPMwKiP+4q9vr+pGZ0AL
	 ij/4DHXnejHUKenN4YGpI+BwxsARPlHQ0+0q7PAX8X0vVX+hWUkCGwNvEcMtCyTYrH
	 oyZBmS0+xRTte98mFlx/i5LqgjrgIFctMimc9raVTqhbiUmgm9nRiGukXrsum0CRfH
	 L0Y6IrEwABtqxn8wQjtFPrBCEFjMHvkiO3wk0iOefZGJQ/m1383k36cOkjWd1WBIck
	 gC5Ef7jgBfWcLHV+ihcpF/zPmyAbSyWULXlye2iLMhY1A5+rnWJ/DuSfZixyCcFcgK
	 Bq4jP7zwJbwYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1F9D7830E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173314055363.24141.15507126397034304539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff5023c70f2b91431198729b7ed10330685bf0409ba30ea540628d9aa435457
Date: Mon, 02 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733140553
