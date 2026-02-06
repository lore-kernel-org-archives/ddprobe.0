Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3F0366577
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384234; cv=none; b=SvzKKsb3RQWAu/V+ZiTW0uHK6W1QApLHHRezsksgyYlBVR4iKQ20j/gu+yQGy90sDyN0F5rhDhpWXgsvW4bqNmtb6s+k9JQJWHddr/VAFjRYkWnZd3vmJByuQVoSUeA1UrS2DMflCooxBq8fpyaWELOuMvMKVW6qWJ5UiR4zgF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384234; c=relaxed/simple;
	bh=IR/N2d7l2o3vjZI5G3TSREgjgzcXDeYEVs5pFRL+bXw=;
	h=To:Subject:From:Message-Id:Date; b=LT4UiITk6JUE+XkkKVtMkMoBeR5FQMlRr16pZuJAPASCV+qIUxPFCb7LfcwQ/zTjMBwhFjUvlPP6UpSyyBChNqZpGLXnLPzS+LQ/g9mjWCzOYvMAYDFDnPVxyMvKVsBw5Nnmq8Tl2slwkM5k9ntO7nmbgQQPRZIIxFzKc05lNLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvroygNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvroygNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7D6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770384233;
	bh=IR/N2d7l2o3vjZI5G3TSREgjgzcXDeYEVs5pFRL+bXw=;
	h=To:Subject:From:Date:From;
	b=ZvroygNFviClSXzpNRuBn71Sqb9jt/5+HgHpFm0gT209EXAwZJlU5cmyN3YFurwSx
	 FnWWwXzV550A+Q1VVWew51h1KWHqaDr2dkiltGWScd2IeDAKa33bOeParR2Vqcdvk/
	 WCAt/cdK5SubhUfvyUZ59EKX46R9swd1FtvUSJCDrWWUggY9lDP+iXZHfjPN1MYDzk
	 TaQXXhbFf2jwD6th/htHRBB2BYQhbwx013e3O09wMQzf9zFIVGZ0kTTrm4pA2xnLR5
	 SL6Cpkuv6qawcP/0yYEwLHrrz72Aot0DW7trXWL8MaRfefW1Fl4ZLxHgJiNEurEXDe
	 E6qYBRjbSyaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CED0EE20A2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038423363.306.1973056942003642201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad7ba85089457e49c77e075ad5811035475e0e8882a421f1a2bb87a9924dd0b
Date: Fri, 06 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770384233
