Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D66AD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2B9C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672789887;
	bh=Ne+toxFfhKdb9JfWQXEAHAOfaUVQpZGZ3qqdfy4xgio=;
	h=To:Subject:From:Date:From;
	b=VeYYl8EK8tGQZmk2BQ/1Y/iNdSmQDhSn+v8T2fcZE/milptIt0HCYQHX6tmo7XC+f
	 5vSJjMwelKsgujoQf4xfeGhJSK+SU4ti2dP8bXBeOEE8lXtc+3+GTNT3LxNRJD4KbH
	 FHMnkQKa6OoAmV0iJgkje3oUClO+gBm719oYd+fAhyxAsX3SBRwsIX8QemrDf39HxJ
	 JF+lyZD39xST00xzT0KItqSPaxvllZ9+UlhssfzRxcxCWvddKdjaTQeYs1qCrZ4c3f
	 9KkhzxgVGA6Erv+2aE6Djcgu5znmk8hjYNsYtq28vlTcBZBL3auNR5rZY99fVcTXi8
	 HR/h5tPDBbdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75505C4708E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278988746.19463.11428695694810417142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c296e3208295e1d447e862fe363ddbe903ea14d3e63852ceea44f32cb9cb795
Date: Tue, 03 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672789887
