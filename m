Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C815480C04
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726246553; cv=none; b=CU+OALt2kHWdAS7A2mzREs1nyC+ZjcxTqLtddj36fCn4cQRnTfKLufEzUpoKVqk8m9A+CUxsxMbcJnoyQkHXoH0MxLrr3ItAgHzM70evMCCLWXFs3ZqtNA2+MGtMO6DY2KbAvnQyLGCCaZj5z4bCMwcFXJZQSU/uFYhSPOxJPX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726246553; c=relaxed/simple;
	bh=P+f/NEtvf6O2GE/DtlWqRmLnMcHsCDHhvRJLoO/HZAQ=;
	h=To:Subject:From:Message-Id:Date; b=hFk+o+N/Rnmb1XUHkPlOEKt8omq7v3kDdbzVZAuM+mMQaWjpVEarlZmIn40rLxto15+XdtZq6B2FQDulS1mxsWMBvS8/OGKTCXulvz3sepo+2015CJhwBLIofPYnoR1HhV6Kv/3OAQsJh642/pmFXY5UOP5RNsDeY5q3eM24cvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9JOxLMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9JOxLMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDBC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726246553;
	bh=P+f/NEtvf6O2GE/DtlWqRmLnMcHsCDHhvRJLoO/HZAQ=;
	h=To:Subject:From:Date:From;
	b=J9JOxLMmZCDMc4F/Wwpe/7SV+wr1LAZymDm74kq3MjAiUi7FJ95uro+P5xsXyDBT5
	 kEUq2s8/tMlkA5DrlUzPMRHavZv9xarc++pPd11uDv/IMIL8WvuOEulDpVwrUPVCrV
	 PsPO+RKAGCUvhhR+cyUng+TDWT7EIopk0byoZes8OmDG9H4u5Z24mSrTSZU36/g7/e
	 D4M2nwIOgeHR9bRTrklTtjUI4xbs4xHA54m/cn0T/VaxcINJ/dtLuzZbQxXgc0GEGS
	 mEtG+rzqpu5sFpY/EydnTSle3KCEBiQrfZ+dv74frgNjIeCnmO/eD1OCbaKXjH5/lk
	 ddbp3xN22SJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A3BFC6167
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624655359.13560.10269779985457285877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2756ff1fd4f9b532bc419e3b5f45fcca1d4c45fdebf506a3276eea1eb3ce5d1
Date: Fri, 13 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726246553
