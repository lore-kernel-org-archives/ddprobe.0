Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F58E3C6600
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776453454; cv=none; b=lG18KNh48+aSFKfuDkT8b4RKSwAGpkn7CbvYIDR3koGtHKMyiK3nBdxB2EQdHBE5G+YLead/HIJ9i2wQn4QH2rAyJDJjqb9xTg8VPZCjYrdzrMxI/Dy5jqD8wX3ffaqTShr8UwHEQJYkPiOzRnz4w5kH4UezLjAtqIshlnuM78U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776453454; c=relaxed/simple;
	bh=Jpdfj5MdQTYnfqb+2RGed4/o4faNV79/BhIg06CMy30=;
	h=To:Subject:From:Message-Id:Date; b=eP8Z/bPaOkYA1y5o3/tJfPgPBT8GpAHGXgYXuZOA3hZpRj7kEgR3UXoyfgbgKn8dzicVPUtCELKOvJU15QZHXIVFHIwL4p9tfFMaBXOD/iO8CqiwpkXmGv85oMj4+9gZ90Ovdz+pEAUdb61grklMVuFHtOSmlhxKG/WZalgA32c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaWyVd9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaWyVd9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3CCC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776453453;
	bh=Jpdfj5MdQTYnfqb+2RGed4/o4faNV79/BhIg06CMy30=;
	h=To:Subject:From:Date:From;
	b=TaWyVd9XvftC05a+3Z+PCLiIqZddaDkR1655u6ORrz4XH9+KzE9Gr51W7R1Tp8wQR
	 HTwOM0lAhrThHBSLYDb23EPkqx52X+yZ6VNdi9Xu/pGPq6eXOkx91Zb/lQNsPPmbO4
	 aAuheoH9DufAiKBWokz54Fy9XLtLfa0/zkEYtqRb8TmtpX8jew4V7+t+fSw/bbkNQk
	 2uTqcF1CNVQ5aMs2EOaibesi0dBZVjJe66HV82KCsZx5HGQQq5EPqwbZeM3DiEnjt2
	 xzruuF0clkBn2leYU/C/27wVxOC3BjOg62bn4B6lL1cSP14ejnOb89ZeBY8sfheI8f
	 ntjDa+p4DWX8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA7F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645345368.11499.172345535367745158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd3d4dcadbeed9c466e2f111af5976c39819ae28b8789d8dd547aa7ca575d1e
Date: Fri, 17 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776453453
