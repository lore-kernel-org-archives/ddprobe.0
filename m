Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13863155326
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768725234; cv=none; b=NNSo2uGBB6/eKaxCcH7LUPZbKaPJrMRhb6w6IKL6rBZ1IFnZuUuq7xSyJlFB6zGgGRsvHhcWlBXLQKzMKY6TIP6LIvNTXTnkj2sfTyBHOdQiOUPMdYZonr1IIBdahv5CDC8Tx2Nr/lchsRa/VNhhZLK/MvNaJJASdst74AGXuDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768725234; c=relaxed/simple;
	bh=VL5MgtpSGpJf1roSs7lqAfxBdNRD+1YToj74AoK/8P4=;
	h=To:Subject:From:Message-Id:Date; b=ojEJT+YQKsc8qgfV9pm68XdhFWf9Z1IqsJKC86DwdTWciVuaKtxi+AwLc4OsQmK6N/zH4f/JSkQByI+tAR+sjw+6Cw9lGsMQgwYXPsOb2i3G4KvI5Vo3SGD0bRJUokwxVNh8dAHHZUIlgVFT8kbyOuhjQAk8sXHU6z2hV4XcfpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnYUZk2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnYUZk2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A252CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768725233;
	bh=VL5MgtpSGpJf1roSs7lqAfxBdNRD+1YToj74AoK/8P4=;
	h=To:Subject:From:Date:From;
	b=XnYUZk2TVWhL7x/+t8Hx4nHa2lOSLauxyLP37rgTRrK9k8JQ3OUp2uaR6SqqF0Aa6
	 k/HIT9MYrLOtkNgGgjX6Uq99PSrqkcy/ECiKIGxJql0aniJBshgHbH53UY6av2L/ya
	 9VLejf0+PMINQ++HH7kT9TNYuIFkGTqbdOOkVcHwtvq3jH3T5S31N3ZdPsMi/aodbi
	 6Zuam858eRdUZFSz0K/1Hy0f6bhjgHa7dRny9JHu96LLgmAtXq2+XFGqSKpNrKwBLU
	 hoahIvngw8lbLNzSaslFUILxj84+w+k8CbHyQzuV5nUF9M1pScbIOTXjyC9+GIZXy6
	 7kcZ7bbr4/FHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B9C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872523358.13634.4075136795091083618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9265361b5fd6ba14427499877c747e0934be5849cddd12f93b8fe8ea49e6dcdd
Date: Sun, 18 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768725233
