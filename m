Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC4A1F92A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751192395; cv=none; b=CuctyacOoiuQ4ZXULjW6jCFMJdbXnZJoJ6rlOzeEkoDAzV8gFdMA0F8w9C+Yy02eud1pDw8lLnYBK2Z6jaXjCvKiDlMgF6WtyYre9wJbZJ6f7k0vuui83QOkBsGxY7ycQucz4xKIZ7ABDzA/i56iJTqh7HnAfWGD6F/jnMjnuYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751192395; c=relaxed/simple;
	bh=GcCjnEEW5gNqoEGOcG62DP/a9J1cS2P+epJzcL0BKO0=;
	h=To:Subject:From:Message-Id:Date; b=k7T82b6ylhDDayDoKaTJsvKVYcNifXJE/s1w6ssMeQPGocOy4zOrMQSEN1EYfldZrxj0j9KLPxDghgVwPIZCCIkdNqvaEHsDcSHKmrvQz9HzuX0KOvQ17tgLWFTjR9jF4p5tN2Ru/rVxs4g5H9ue80RlaHzhknc4NrVyrECC/lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSx5TRTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSx5TRTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4109C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751192393;
	bh=GcCjnEEW5gNqoEGOcG62DP/a9J1cS2P+epJzcL0BKO0=;
	h=To:Subject:From:Date:From;
	b=XSx5TRTORz2fhmHVsSWWRyvsQT7NmQ2okIv/itP7yCLTJtrnj7k6vcU9ZwgVe/DYq
	 yZLfthPlz+Ys/bMMPLNT/h2sjbLXTiru6E2+MQcipGSGszRhLqX535HlpBdRVJXs3h
	 xSxaxYx+eU/b8jcOVaYGeZwCxVBGqSlLzYyrze9Pq2xhed2lGz9dDAImfbcbMDG2Cj
	 9bA2dJx6sCxHFAdSd2q0q7Ere/M/1FqARy130g9I1Ro3HtpDlgmGf0ozG/MoGnY+MB
	 p0ub/qyI+ElikIw92cuiAxY5g53zLQrtDUhX6HPUXZGEQq0Y6pD2I8Cb52ojrOlZe9
	 gbuuWxlOIb+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119239357.15352.1805379966935722629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf1f95bfbb18bce86121c6a2c84872fd86728025e51512b8945a35a463d2b7f
Date: Sun, 29 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751192393
