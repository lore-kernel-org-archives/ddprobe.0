Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FD022DFBA
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753700994; cv=none; b=CdtuEhoW8tHsiy8cZECzcZmeA3pMYWmXmRYWiXuk3UEPiah4YWCniWenmbPtJTeh+rDap9w/fi/vQewZQS2oVD4ZntNBRtHKj7F9Ixxe4GvybR78CBuhKwj5VdZA4XBH6Z3vWxymfQMfyCDFQZhcJaN9TWjNDO/a0PpEJi7yH3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753700994; c=relaxed/simple;
	bh=b13/cLzt1hSlFysVhelxdNNcaSpKyUhBbo7sMShA2Bc=;
	h=To:Subject:From:Message-Id:Date; b=j9c0siTIIKpol3BZ/19Zl/QjVEtkB9DrXIfec8bVSSCHV3XwbA3uK967E0iOPdXRuOnkAMiZlUjneTgXKD2u4v4vNJbwfJQHFIyODGkmTMV+/hcZTAk8mcQpSc1qqZ5EzYkRnDcIaQHp7qVyI7lpSpwV+HbS/KNDkgfvFRtEHFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb/vJ1Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb/vJ1Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C79AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753700993;
	bh=b13/cLzt1hSlFysVhelxdNNcaSpKyUhBbo7sMShA2Bc=;
	h=To:Subject:From:Date:From;
	b=Jb/vJ1RgYz4SDO+L1Hex0upaGvgbuOfySpYjDhg4cRtbvV1ibQJY6dsiz1zTvKtbF
	 Y+g9/FFSZc323Tdy1lvm8eptKo+b1hMsZzFFDo4SRVsoP8DUlnimirlUBqjCRfDjkg
	 DIbmKnt4pOh2I0knExZDtOo8eZXk9lMMpcBh1vByEa47I7fproa3eK4lV6fV/GbB8V
	 LFrGa86qNjzjTeKpuEJ2jmwjGtaO8WS95nb7d2zXbqS6RvQbIJ8m4NwpCrnYhk8TVD
	 vqqs9r5q7NBYrH8AxethXQzgvxft06Q9UT7WdYaFmXtX2cqTHrl7/4bYsDSmwl7bSK
	 Fa3N5nyQGJ2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB71C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370099357.12240.13814137996318609652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20585020278cc735b66ecbca43d40a89766070520141432ec92aab89d9484d94
Date: Mon, 28 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753700993
