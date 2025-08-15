Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F21266A7
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755227396; cv=none; b=khHxV7czLXNVvsY0hFavp+GxDSJkE5wQFQUj8LmQ22YEgT9bfGJCdPN0D2naomHQay+qohnnefQHnacNdV2vFxzAEtq1Q9bIi224hMNYbhfEvHf9uq70qMQYGDy5ambziol6fxmOgxIxsfX6wZPYzAIgpb/67qG+co7W2sBnghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755227396; c=relaxed/simple;
	bh=J3EX8ym20xGteDO0TQtEk76nGNICFLDfVcI1j2+XFEA=;
	h=To:Subject:From:Message-Id:Date; b=b38KDw5uBsQN5e/PZRlNVB3QIsfC5fMJ6XaaWEWGATqIFv4NdnBske8HRGbnE+BQDGEfp0yIMwla0H3eQ9rPGiHCwEEh6Ty/1XLmH0I5xE/BX6Vp6HdJy4YDAB4UdzvI9U/xpC0yC1Jw4RvM8v3b6vwXraz2ZsAvNNY52bj7Xf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHejm/0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHejm/0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755227393;
	bh=J3EX8ym20xGteDO0TQtEk76nGNICFLDfVcI1j2+XFEA=;
	h=To:Subject:From:Date:From;
	b=dHejm/0umu8wBTiIgmgHpOKnz5oBQYgek43zXVmRUjQf/GkgMFPrQzcyn0Bsq/IGu
	 uk9jdmXvTaB8DfjbRPtXs9/ifBsZoT3lpaJuOq1+DNUCaOrxbR0svcf/tPa40jyW6g
	 If0GodS0MKMSjAizt6UnRVf4M7hMYB77wFs3BtsjbNxdlX0tlpFqzqIefZa+02vJes
	 NWF8PSUTDSEmwY00EmDI9ru10NjuFYuFowqO3gmwWVb5u8M5S9An2MO2GE5dyBi0Qs
	 NE4fGjMqWwhIDaapFcXzFG5F1oQKVv73NVDoUfB6C5HgwRaUCe1WdnoBFOKQT9YleQ
	 I9dbOn9uYUR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F592CA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522739358.9792.2013622607453462634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccfa6fa7a86221258020dd51644afa92500e54691c2fe0dfaebe241fc0de5ef
Date: Fri, 15 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755227393
