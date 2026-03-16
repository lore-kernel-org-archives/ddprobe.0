Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8597080E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773635094; cv=none; b=Cip0jq97gW2wammwcyil8q1jY4UxvwrkVRu9W3ke5R0pQiEX8FU5ciy1eqcXikc3SwwSwgyiQs+46++VvG0fpyhlst6Qmc8WOoNnk2V9guSQM8NXXmOm28gaqHiRjzW+CyCd2v1RrCfpM3OKOb/CJH2U/f+k8tfK9jrjVMBo5Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773635094; c=relaxed/simple;
	bh=XLJIg8yrMnJ17zFAfQw0ogaMhmNFK9GviSX1l0f8kKI=;
	h=To:Subject:From:Message-Id:Date; b=T1lcolLBFsbpSc7KAY6QFca/jRGh51hj7KC4Kfih1o9Z7LljjA+0QSWW7cMtqF1fF0EqGEejNSDqcdxu7n0UeBWs4gJe2ktpcRB+zzFEe7SPpk/enF+kDufqKHubqLAzJm38wVwJykq6HG1gogvOsIvs0KCODJMrV69iGH8nYmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/K9ZJPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/K9ZJPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78E7C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773635093;
	bh=XLJIg8yrMnJ17zFAfQw0ogaMhmNFK9GviSX1l0f8kKI=;
	h=To:Subject:From:Date:From;
	b=r/K9ZJPvMTEuDjo5KyIRBhYIxGdzGplPo8xEk9/OMFbfAkYp+AAtnfsk5qbJnUjBv
	 sxOtbuxu0/KaGu8JLX/jb3X9RpLwQccvdPvqKRpl2gT2KNsdqFe536ELWZlYMD9k3Z
	 9IGpyVVKZThYDg6XSmEEj+P+e3Pf50EJfBHvzfzpTjos0CIWNfl/1ldNUKHVGcCi4/
	 ugyjIAP4sYKcyEPtw3K3BhFvgzaYGqRmljq8z8Ih53EhVps0HGFBfBMv4yobrysqN1
	 HaL31XV0cC3LeSh15WfY5cdYYeCR+f//SBQ/S8d8uwijJ0Ne0ue/Vahx8NpdGdbA4f
	 zzSICPm9HPaUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B0FD58B19
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363509370.26497.9152552624154454498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b290f9e099a2f8eec38b472e49e9ddc650188db86a8e28c6c1c3a44feea61fa2
Date: Mon, 16 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773635093
