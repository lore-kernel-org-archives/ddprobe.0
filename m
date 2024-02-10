Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E75F47E
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707590897; cv=none; b=URchGP+U0me14sXBZSZ+pZqLHmHrQIqWF0kZ6cdjc15EqYimkzJXi3rbrQ7prDdnCp2SF0Mc8BuVg7x8oPrIlTuCFK/oI2IfNhUS4cw1/iKlT9S1eSPLNuKQZ+c+CIlS1P83E1GI8WmSeH3/hk06Md3os0XUmQW0tVlVn2XalFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707590897; c=relaxed/simple;
	bh=LOOQnf4k72MKtm6DDSEQ0mOKhCfnnlnlfBocBVc4qqs=;
	h=To:Subject:From:Message-Id:Date; b=RoI1ro4G8XSHn1i6YiGwdBw/HIHEJVUbUk4agkLN6VXxxNmdcXD1G18EsJb2SxaFIbhvv3yvxu9rcLGFoZElxC9Qrx5+Kq+7d7WFG1lm5Pq4QCtMlpuA9kVSD/ZyfuI7PNN+0BY6be0n/CvH6VWnPVwJTutXMUo1D6oZoUKhPa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KztA5XMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KztA5XMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8075CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707590896;
	bh=LOOQnf4k72MKtm6DDSEQ0mOKhCfnnlnlfBocBVc4qqs=;
	h=To:Subject:From:Date:From;
	b=KztA5XMWTsWlmXx+SmagwpE8B76/aPboA/ryJa4T8r9IiKJ4XyAPn5IZBHMGxsUzW
	 rhOH1d3KTn0bFUC7y/09QG4PlTG/Nyr8x9w1u6mUaCGhbVVAcSA1dqMahPqJgO7NjQ
	 NDtw+b+VDF2ORkQypY24YO0OXvAnXxu7KNbaeuK2GeKIwDAhsI6K5IoA+nqk916ldF
	 Es6u/iFRzio/OyoXSWb+kty/HZRbHyrirgN7ziNDDJjFWHbN83vtLAmqNREZcWfAwJ
	 Mx9KdUdetwj6Y9WqZgifQQyrP2jmsdVVK0Qk7sLL9BLw4fOy2pGTCaDjtbmwQC7Fn5
	 eFXbdB5qryqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63120C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759089638.23751.17547862262090326126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83b6e98b8e642ee5a66ef121d62bf74d62e71cab6ba4b9064e18febd666cbb5
Date: Sat, 10 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707590896
