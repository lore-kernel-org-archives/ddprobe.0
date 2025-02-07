Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546FA234973
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738914955; cv=none; b=h9BEjV0uvyfIfIi80mwVqNCkPlsJpQJ5WXIedjLTUC8DgzPkOzz1lTDwNza57WOV2QRJ6gD/ciHaI2Z4u3noLM9kTYavHOGx92DyG69fyvG1Do6pDY7tcCJ6GNzaOo82gpTDIjWn2bq5YGVa7VyookNW5ZUdx6m4oykmx5g8+nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738914955; c=relaxed/simple;
	bh=RVPpVzSYhTCWm+xsLq3kT2CUJQVAXC8cYn2q1evCFDU=;
	h=To:Subject:From:Message-Id:Date; b=la+4b93p1zUUJGOvPLKuOcWv7F822In630AOb6A8WYwzqqRJVyLqyIj61rKoe+gfcZ24ZDZCQ8TGEGfc9QuhjFUSPvPAWtYlhimUHDlD3ijw8yesRvsC8fcc4mpRWFJuEpOR/bKaYvIOu2SQMgmHN1Nmt8Cz4rJ6VMtoNrSHvl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJHgF+8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJHgF+8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDD7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738914953;
	bh=RVPpVzSYhTCWm+xsLq3kT2CUJQVAXC8cYn2q1evCFDU=;
	h=To:Subject:From:Date:From;
	b=nJHgF+8fRXRNgvRU3y+A+PxFGEPPT3ftjCm0D81PUmuSxHRxLQpma7mfdEFSduokk
	 U2l+5cFirsZX0U2Ag8ErHP4UZdWBhrmtEjrEcaKBFxhgx/Fz+JqBxbQSmTByTzthap
	 Hbmp5xFY8Dh4xuww2CkZLZ3kcrSToo3AWoyEYjJJSGb2qCiQ8r5UA3I96WOXk9g0X4
	 dB27PtLS7m5ZEz9f7ldiFKx4zOf7BZlbGgf2SshGbZ+81fLfRJdISpysip+cwnA0Nt
	 17QVNvZBT8tiFC8U3wm38wUsVNXXOoXmpmJq2QaRf2ORjmKHbQMKxZq1/SmHU+Y/FX
	 +1STGwfdApLxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB8EC02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891495369.1501.17652554090651397367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76ccf45fb49d702065d0ccffb03166338cc00492e8155a2bc578e0acf85a032
Date: Fri, 07 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738914953
