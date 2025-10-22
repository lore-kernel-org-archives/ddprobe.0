Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9821BDCF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761176394; cv=none; b=Ck5xWZAeHY1jXb0Gh1ZjWlHGnWkrB+XCDYnQqmcSsnUC3yoyLLo6V6j62FvZzKWqDeuYQ4Qj6W9dv+LJPuBhoEhbV72o1BRe4y2gOFbatyuNv5g/SqIuM1/MWH/qnL8YPwRXczPoibeqMSNktMFvL8sRaAq4byZ7+2uOZ5PM/AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761176394; c=relaxed/simple;
	bh=wJIg3BsBhW0uAxCUM9+tN+MTBn7k59uAkvsha4XLSU8=;
	h=To:Subject:From:Message-Id:Date; b=SfWrluzY3FM5x51TU+tmHqavlHVDIqelRZDTQFJnKXeGBrQTFT42Vtjex0RMXjBfgH1f3UwGfuf2yibaV1eb1CQCaK2oesOPr9LhD7nflAlgmhFOXv3cSWp7w16DJtPVhmmlS1Yl3pJ8tfBsOfCYBmXJE3fDcV0xR8qIB57YzrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De+r94a+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De+r94a+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6548C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761176393;
	bh=wJIg3BsBhW0uAxCUM9+tN+MTBn7k59uAkvsha4XLSU8=;
	h=To:Subject:From:Date:From;
	b=De+r94a+DuLOncYBP188YAoir64FklscFrzUZu2bgJXPkUqSio/2T+uLwCHxXHvAn
	 MmKGo5pOBnS5iRW7WJB6zoeQS74vOJo8vVdQrVwbk0JwmCgbHn6aNSQyNSOQqX+OuG
	 pYhiY9F3yvMB0FFk6KMKccIJ2860rlWChBpgQ2Sq1wU4mIVIcKdOOHTd+ak8QlYZoY
	 K3Jbsp7D5uxJ1baeQfDomMZvvVVl56xsKGCQq8znEZPxkV2/Ah1Bvrv8jov2yoxTx3
	 SobGhubFtRZdNgmBg0lNiI4f/Ho7On/uTKz2MO/YLpbQI14brfzk+YdxdhLECPXqQ7
	 1BKpa92tjve1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B47CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117639358.24435.8079429248300880563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1299e8211429bb59ff0a14808ddaaa115bd2277238d9bd6d334feedcde44400e
Date: Wed, 22 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761176393
