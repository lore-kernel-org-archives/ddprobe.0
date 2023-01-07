Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D763D10E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8446DC433F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673053887;
	bh=fYdppl7j4q0lN/K0qttkB1mWr0wR0HrVvVy9I+Kjl3Q=;
	h=To:Subject:From:Date:From;
	b=Z+oDFfnEvjTBbo83BNkH7wdq5o1bKwfSbzhb7k8kfebOQYncld29zDUrlUN0SlQZE
	 TDcXMBPsOcvb/7sFpEP2PLz+6MzosxEn+KEburnHb2mCwDrWwaRbsgZqqIviGDDFQ6
	 gpDGN0piEKu3sfPQ+ZQcH+ALN/XaHOBa+oam9bTo3alvClIcsriu4btIRycXl+/g9+
	 SPta6rS0pD9rFffMfpW5X3jQrf/ojqlV0TyZiNQi9vnB7D0pgg+bWC7ocTFRHTR03k
	 8yaDn7DY1RQ9yi8ci9BZIixO2rt+cd9sIsgi7RI1akzf0cB9ae9y8Oh4bqHIHB8iTm
	 b2BurYn3yQxyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A516C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305388742.6148.6888846564556754076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23511717dfeeef42cfff9746339eb6ef8d7631df487056d00ca4b60c1354dfc
Date: Sat, 07 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673053887
