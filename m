Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4985AAD5A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747282794; cv=none; b=oT+pOY7YOxpBlHNzHuByFHfVd5P/HCix515U68puaohKst4Y4n4Sw+QCTNi4kdcqo6DsYU7zzezt6KIhXm4Rilj/V9FdE85N83rncP7RAEPVKpEvsKoKJu8R0jXaYchGGSi946NcL4Xb21NO7q12NYacodP/x7wSV4/lKt4BOAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747282794; c=relaxed/simple;
	bh=qbQlXwD9F/6OqX4vt9QQgXuy1AFxHn7yO6O2W0rfmHo=;
	h=To:Subject:From:Message-Id:Date; b=ZRqq8oT16fDnR4DSOrWfMoJ2x8aVgzcweQZ8/QtIOAYRGuGojvGeS9TGnuCxQvKZG1rAgtbmQegqyZRXC6HAONTA5+eC2TpkEZXG4g4IWTneMSpEy5EC6WBxxyZOgO6QhNt8sqdDwFO7pwFa21FLz/oIxlKMzB2O+w03RJstKm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcvNCPlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcvNCPlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E7FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747282793;
	bh=qbQlXwD9F/6OqX4vt9QQgXuy1AFxHn7yO6O2W0rfmHo=;
	h=To:Subject:From:Date:From;
	b=KcvNCPlXCxA1fwvhO/Jf/F5QwmxKVQiV4QDlCCgNo8smkW6cUCiJ7xpdtNiIy4RIo
	 LDSBPyXrfO766AACeeV4ZohgxU6IHg7so60XvxBlna5M86iR9D8jCBaxVZjrG73Cl9
	 B9GwG9Hp5zrXzCp8o2+2asnRr447l3SfbJ5Bizw/6IXaOhTy7c3KGzzmZNc2SFpndK
	 qKkYqm4X2lfWnRLakVsXwBrtmw+DRupMeZm3YkU6IW7vfvDFL5nraU9im4VRqTg2yg
	 HNRYHha3MoBdsUDbyAanaF1lq0ZEsQw8ZNeLdi23SFUqvjx2eYvNW/tZ1bzh+0m8gt
	 tBsRCxh7ruBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6BDC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728279360.3502.11464580464028429781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a637e1bb1921cb65be58adb6d0ed5707b5f2d4b73bb64b87bacb798f5097de17
Date: Thu, 15 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747282793
