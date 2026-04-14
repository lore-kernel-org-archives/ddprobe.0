Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF7469D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776131854; cv=none; b=poI0yJDLSZpl4FGr/3RtuzIZtWBxouKu/yaD1Oc6W9BRv9swu/2qJ/YEM/EvvVcriI58WK/7mgkzBwmhsrAK9exT41Xr6GKKZXTAg5no9LJeXOO6IthAr3mcExZQKM71PreBpJcy17Ltjg/L8rG/NXJ4Tci8kzh2LyRHBqofzC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776131854; c=relaxed/simple;
	bh=VtTLmgqJCmLMkChXFyP5U7tjLkIcNZiK4dv1x5lG4kM=;
	h=To:Subject:From:Message-Id:Date; b=g8hMwrUkZ8DOwpR5tZPSwdJwn7Nm2c1MgOhm5JPrc/fwMRHJBc0j071P/+Jsvp4VnwP7eNBGYIXXwvSpygbbQ/nrN156gASUz4uFFM0XVe4HtCssKPt9QqEf/BZ5x+mqba19L5m45Kf9UqE7QhPY1gSbqors364Csn5N1VOp+7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5Nxr6Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5Nxr6Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC166C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776131853;
	bh=VtTLmgqJCmLMkChXFyP5U7tjLkIcNZiK4dv1x5lG4kM=;
	h=To:Subject:From:Date:From;
	b=N5Nxr6TezHkwzkz/IvqFRXNk6TOWP/npWtac4jiKNr9dY5Agfb3d0+a75pRZZzVhO
	 LNe99clUyVBYwgWLhl2ocS0umF2qhdDnHXUNyQ4UuMxKsXxN+vxrrWG3cSmtSfhPVu
	 cSjqJpAXQ3ghz1ckE/qZC9SXVPFNCVs6H1rkiB1yiKUUvWC5QwigoH6mGn60ntoM10
	 xHUKginLh0MPe2R/GZLRbezS+RK6hlFS7OYnfv2n57Blbp+R5unrpxhC9oCJkVJm77
	 xiXWTZlj7VYS9c4kj2aigDsgf1jN1G7H5+Mpu5MUYAOK7O7ebgX+dph9uQJpGDQ1WB
	 gLwyHF0mSTLtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA4F531E2
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613185368.16580.11927762945230066871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1967dd53ec4fb082da9bafdf78483ba98122c3ffeda67a04a591925650dce72
Date: Tue, 14 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776131853
