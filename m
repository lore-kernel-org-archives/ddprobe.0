Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B20E37C93A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776070054; cv=none; b=WxthYTTNxjTh0TiBB0M+aCQh13qnNKsMq48trQR36V4t8R7KYmDF2w0HAyEmsXYHTQeB2SnmfL/4hLjjZonxunuxR7CpcInne9hreC6ZGPp7JEVcsLkQxGTwE4ayOyRePofGqAAlhAzXcAf9mQVguEpUkuztCcec2/muw40098c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776070054; c=relaxed/simple;
	bh=3UyxB2drUd2GaUwdtdx4ceDTaJ5WxAkLuOlpJxJhxXM=;
	h=To:Subject:From:Message-Id:Date; b=rys36ZJ52b5udSjSYrsel4HibvVgFW7VG/lELQNvKJKrfK0cQWiEqoMArUko0zJAKiZBm2pwjoeJZfToHl/9GcCnSjSbhNRtkmDdRVAa0JHW64DDMo0DelNd4nubvyvtK3oh7RfoZ+LHq7A+3aQryDjSL3G6IVk+/uh4A/mdBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcf4cRGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcf4cRGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8767C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776070053;
	bh=3UyxB2drUd2GaUwdtdx4ceDTaJ5WxAkLuOlpJxJhxXM=;
	h=To:Subject:From:Date:From;
	b=kcf4cRGycRWISwkMt6JcaN21H/Q3rxSrZyAgdBS0FrHSlIFNsgUqbfQ7TLpKtCDPg
	 7kBZAN7DcAHYSHyEgm2iRIFaLjpVD8x8jiqpGgWWfoxonRy1T2NvYyYsydxMoeUQ0q
	 R/xbCewXJoPGK84tx4OD7sx5WLb3xnl67y6uUd3/tB8kfp0rmiYWLGvnLPOaIOsYss
	 +e4SblseB21DGSzqP9loefmM/Sad1iVtNICCgz8SWp0/s9fK+8ooHzU0RxulvK0m2V
	 Zix3RYorXO015B9HS+Z5AnCxfvtJS/DDSc0QXF9aybDgbTnBDjmguuBCrg2lJqGP9h
	 k/JhVKNDpygnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD8EBFD18
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607005368.19694.7904394596325915436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0df5cedc85e15a1155bad8641de7046cb4bd9273feb81f340e8750f5400b39
Date: Mon, 13 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776070053
