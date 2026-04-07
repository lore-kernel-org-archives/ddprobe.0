Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AACF38E5D7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775552734; cv=none; b=RFtG8SoDHcgtah3uSE3P9KIYvtSDOlGRcxIWBJwpK6t37VwpDkeVooGBloBwSc5QvY8FbuUvwNL+iffpEnGPskcQrEWzIMiC6ZdsyLIzx6EH+i7un6Glfcq/0PyTp88HFBTCXcLcGMp58YQ6al4gdO/p1SDWRdJ/yeSPF1dyE24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775552734; c=relaxed/simple;
	bh=oASJFnFW5e9MQ8atHjmbXChcL3gQeAXtLuj2tzXKAOU=;
	h=To:Subject:From:Message-Id:Date; b=GvdaUtCL7bniKcC/LJPMh5uOqVymY+qBZZe7qYWnWPzQ4piducku6ZoqLdtz+jdR+DEUbYfnQ5Sfzy7WUCsIcKmHqMMQdAmA6FuKaCBIlYQ2DSx8Um0rapDQHHvzOQ6rdiLd2SsjaqaKPFjbTa+IH+Nva3bHeDp0ui8A8L4BKQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkxgX2be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkxgX2be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C0C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775552733;
	bh=oASJFnFW5e9MQ8atHjmbXChcL3gQeAXtLuj2tzXKAOU=;
	h=To:Subject:From:Date:From;
	b=LkxgX2beMYWTNpVfm4P0aiZmCWtaq6VoS2qifeqBA/+P3amL9WDHC0zyBrIEkZld8
	 YzLTEwbWpIF6y2pFss788+yFs9YAoMvJmGy3D5Uqx5CmhynUpgnL/Y1Fg5qHplVSZG
	 G/vFV4dfMwzO1cFdU8pf3QbPR5/tkA0VgfP5xjRTZ7c4Ko6CubSI4WMwQJMfrNwuQ8
	 fN4CqGlGt8AjZfi5zMu2zCOvBZ8bJsh+7lM3jPmv+LAVgrTy0YywKS90TjcrsvcZfp
	 Ppjq5oXaiU6+r06Ud2JMQiM4cwm/olgXXX/1zfJw1DJZCvAJv4wuGbpmi67DBvks+r
	 bTaviSaGPlbdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8554EDB7CA
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555273374.14298.10088177601588333319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433d5d134681cf0fccb2d43e7a9e287b15a2c898edde04e946ac4bc0626e7246
Date: Tue, 07 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775552733
