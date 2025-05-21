Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAEA22F15E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747849795; cv=none; b=plop1sXHK2jz6Q+ix8GG2jdHcHLBIR6aW7+Z/TCltnTyaJrA+BCucNBY6U73B6T9M7pf03/DuqmsKBnTy/SQxRDTcooj0nkn/WOuGUVnype6WFGbPd6L9hW3YERd95U+vKroMGo9MTHqi0A9RJqemNUvSX9h5CHe8AfyCZz4upA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747849795; c=relaxed/simple;
	bh=h9j6gAVVJH71S0K2h4xT7m08echGExeRa7D5EwQDXaI=;
	h=To:Subject:From:Message-Id:Date; b=XXxOoERvLx54sLgMGfZjQ7egBWmHMC/5TNbzCk/Qiw2/akDY4oYGV2N1i0Xi8Qd6iJt6cGlzahXy2OQHrqEyV5Gamajo7UXQJp4MqCoU/TvpCDahoC9peVQxxi3piaIFawP/MDXt+lIOsEHe3UWtnagk94yzhil80Wxm1muQtis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGn+eG7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGn+eG7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747849793;
	bh=h9j6gAVVJH71S0K2h4xT7m08echGExeRa7D5EwQDXaI=;
	h=To:Subject:From:Date:From;
	b=YGn+eG7eR6X/vKZAUQPHg5DdOG+5jEwugFyDC1R2dL/GIrBfb7NvjXqeKbWjmf1qI
	 m8AGRSlCW6krCYz4fiA1F5UKbbnGEsX4WsZjG7nAdk5EDVSSFJxZ+czPh5yuGN6o6W
	 NMMXbLznIvvp+0dw3Nn3uGd2Bv+xNIWH7BGThRg2GzGvDVNFyCb/5vltM/D2Fb/gwZ
	 uYdfJ1FXv9WKsFqVKeTVpwfg6wg2NxiZ3DwOPQ37deS7B1/osVscn9G/EQxK7xAwHq
	 slT5fnZzB8mLg2/yBTTfDTLLUNyYOiJ5kX6wcdBhGuB2tYCRIDmMlO4NjH44RXiy69
	 tsHAiHU9Xt4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D9C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784979357.10721.11323051538752122551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1d6e7bb04b7b400debcd7f921e26a946e5fe8a65995cf6a2a3afcbc96d77b8
Date: Wed, 21 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747849793
