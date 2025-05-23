Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248F4226CE5
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748028595; cv=none; b=PdCzf5z3kBGZi5rhgBSeYWV+iysCZz5IalPPxRyuNaaHR20eUPw7odYGRQKOibs7VHz8z+5xJ7us1U+ApTle1KQa5VGnVJIx0E9G/0gnbNLk/BkfQbsKiRT8YDYcNEDCiuyuCyC0caUFLtTGvpKEc/VmLThj6eoXoeLp3qO/qtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748028595; c=relaxed/simple;
	bh=/uNz5p6hFC1+qLFdpNyLM9Pzp2SC7AAc+W3HP0lw0aY=;
	h=To:Subject:From:Message-Id:Date; b=CaUAhAczSnecZ9k++TcRDYVUQSoVsqLchrQU5ckzrxO/sY+kL+wiDAw91Wnowc//zrYRJzMeNFu38GoqSO39/griSg/fGAuu4mUpdvLOsitblf8H0Tgmjh3VkO/LBhXmCQnKwlfOAZk1nCrCdmZxwAtxxXDtOqKIqfTnU240NFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOZrKKOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOZrKKOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748028593;
	bh=/uNz5p6hFC1+qLFdpNyLM9Pzp2SC7AAc+W3HP0lw0aY=;
	h=To:Subject:From:Date:From;
	b=UOZrKKOPxnoDgJxkVJyQ8Yp4YlqJzPxRzR1afywotA25ckRylcnH8P0FW1yaSD2rU
	 Bb0mLpxR8Y3840s3rIVw3GlvgM8MZ03YUhhhU9SfuHFlbo6k1GOTE8Nybnrhr5wKUg
	 pgibY6yoHHZgyiVFN5O8i5SF6pOoMg727QOz10puv5jam+Yljl4v1NbAnUQ6jplaxW
	 oKZfvH1OZmGD0OawXqyy+VUaXsT+yvONID797qShg3XJMb4XVkOq1bqRLSNnnCGMKG
	 cA/BX+Q52WtT5IeFLfMLYxTZmh50DikXFiYQsiGrgVznp/msprHzcXmM+exkairq6O
	 6/INK4r9JoH+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2CC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802859357.12586.6327795247163873915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9318afc6f40970bb27fe98a653dc3616dd8d6258394510c348f5d8b73571013d
Date: Fri, 23 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748028593
