Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED4317591
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742488794; cv=none; b=ShnDLJMI8EYTZPdMJYT7PX3wygezIDD2/RGXi7QExU9jhInlhg05wl9irP0f7O2Lo+5tF1Bv3Req+JISYNgL5KRPfwwTEjD4eWNP9nT0gFTctQXEHGvb+Mlnpq+OzldnYhn3Vjh1tFHJX7Ei0wPEHa/WAOaxOJzgdLLiN42jSzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742488794; c=relaxed/simple;
	bh=+DTbXUPCokqMtM9dUWXbJCWZSxq65msFPQ0l7K3pOqg=;
	h=To:Subject:From:Message-Id:Date; b=Ak/uqbuiOgAs47EjWOlZajF6UXnJERFCTfE2z5YGfmIj7lslgbHMMINTEpVLCP8t7Uywe+KQ5x9vlnwaT1XnwhnDk5Ixr9bjbDNhmMEUnbDR2AOrWZZu62COFL3bLL5p5L/YYXxzSoQPjP0qFa6pNz1jH3D0Wlk3u/cmnUWVnPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIkQrhKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIkQrhKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3691C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742488793;
	bh=+DTbXUPCokqMtM9dUWXbJCWZSxq65msFPQ0l7K3pOqg=;
	h=To:Subject:From:Date:From;
	b=kIkQrhKV71O3elh1uMlnxiAc7bHlL6CCEZ+PdtfW7ui4f5RlN2KJvOSfJBCZls3lu
	 dDqL4w4apqz1jLlVZh+idWFc52uj8E9jHRz1WsTk7fBPGTQ8TzP14jg3s/KKL8xWLk
	 IL5AiBGQE1qHI9yQSW6dYCKsH5uHq6Eat4DvLyq/n3f8O5J+2U48xt2JbnPrJrOUvK
	 ufto030jB3PlArtjwt8B88MSTLQs3GJs9byeWcDriAlYeB1KyaGot3JvTk2xmbOlPC
	 1wqKWK2W/VCjhURG8CZ9SjzxVxlwSRc2ZTFBCjbFRoL1IJWSVmCNV1YdEbY1bnGYpZ
	 uKlbRCh4qmUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F755C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248879363.17680.10664645843117975941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a408ee964af863dd4021da33bebf6192107b67453c65a04713c48056f901d8
Date: Thu, 20 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742488793
