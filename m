Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2150C1ADC83
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772902494; cv=none; b=Z8FTurSw/r1fHcr/On5vEPHHQq31ym00ulYOHmSdsCfu90Tf2g0BT4YTbyfAzJRVDwL6dWiGnJid9V0RwjP6XnNLiMpgDrLIiPdxiVAsVgvYV0PteX4saL+W5ORpo1nyRaF4+JKZr7bmVUlhrhqPQnyEL1iZkoBN2BdfOXDAn7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772902494; c=relaxed/simple;
	bh=pF3Ye1BzoPGUXhrJSHkCxd8jHSIdbJDCm9KGLrNVNww=;
	h=To:Subject:From:Message-Id:Date; b=qB1/aFXQv8r/VdGOAOncUQvm5iNWSouTmGSYeYli0wf1K71GW3aJlnM8KrJuDFw/ff9L5T5WkGBcTJWSBCW3evhgcgyQxopJjDkRvV4gj8C1VkVlti783WjOBXQ8uNwYMUJQkl6lhzs3yrQKB5V2GMlkBO222NWQKAVoo5cLqz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBKfZqtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBKfZqtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1BC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772902493;
	bh=pF3Ye1BzoPGUXhrJSHkCxd8jHSIdbJDCm9KGLrNVNww=;
	h=To:Subject:From:Date:From;
	b=PBKfZqtHWwJMgkN5DmRnOjq50xSo0YH/grJNlcDjVgAKyLdresGrEhjVXDaWERAND
	 7vx5iTUW4JJX06fLOGuTZEHJrLsiw+L+K7MVwuFVWqP4uXBS992/c83JsXs5KtIhQ0
	 CbCtempcCLtu4sZGHXsCW2O8ab8vGadN7lv7MD+3MRVLe7R3q8reLrm0pceVVwC55i
	 Au1jBucuomrYUqNySlYJMVxFVd0+e6vbKO8/dw+VflsZsTGG6CXwViFEb3GtmpGp0U
	 AnFZpP/FjUi/s5TQaLye+daevZJf96VM9KcW838l0dFJvvhEGDpEsJvK8YDLzzyHBN
	 xT9mumaqcxN8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B60F55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290249358.29535.6213949946948162306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5da22ba2cb4b5959f3bc441b8cc82a647036e0dc5c200b3835a1ee220d6cf0
Date: Sat, 07 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772902493
