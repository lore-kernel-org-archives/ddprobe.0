Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADBB3F1673
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778159854; cv=none; b=uvv+ftOhgt669g7MM8EYCk8Joh+02zYnmyuerQxEnpIPqf9mRdBQ5QtyfgNd1lBfncoTlvGXfAmel4r7/T7gJeDnZo1VVzTh0Kn6kE5L0cuWMnHATz5bveMgX6ny4D0I7oOpxZHc/ldPuXfI2CUnGKEoMlD9sS8X/EtcbH7xgE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778159854; c=relaxed/simple;
	bh=38ETW0ejqDJuOUjSCvgb/oXsBx6Xwupx5PWi3CBBQDI=;
	h=To:Subject:From:Message-Id:Date; b=a+wmyDmAkSEBe6TZOfwt7FSQm7gP0xsL8eUkWVm/Tc9xICY1i4oXaCCJLr3/O0YrrxmohLVXYWuW3TD+MZJfK/z2X1C/PIYrJQNCA06Ep+PJpS751ZHCZeu8+F0Nobgr0EnlMMDQqBsVxEmWbI6q9NI5oGNS0Vw6wgyU0xWGQ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ6+2vXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ6+2vXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99A0C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778159853;
	bh=38ETW0ejqDJuOUjSCvgb/oXsBx6Xwupx5PWi3CBBQDI=;
	h=To:Subject:From:Date:From;
	b=IQ6+2vXBhK0byseGeKx5FWe19IbUrTAg4yacAuC63JtZGnYIyDCbWKAeCmGem5jV1
	 L01xEdnueYg32Q5HYT4K5YsGgMA4ee8R09GZt3qsP7e6Ue/QTmijGHyaHs5Ry2C/Ed
	 KIcpkXqgbuqKIyHRCDI3RkHfNxxhrULjWRsHP0F41rG8xNLAFW1KHzemsuI4T0GLNj
	 UMp/71tCNKyttP10IuWEhRdvddkwKumVL9cxNahdnm7lPfAYJLwyCqyd1oNwtpv5Up
	 d8qV6ABZhg1I/hhTCcDQpm8xKhpMd2ex1GfNkDh/LY2wXm8/5Pg2s4fnNIaJ6lXJSh
	 TetK+fHPKSw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E2CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815985368.8433.10221984168036138368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1f62fdcb59360386550cc4f4b0dc50dac7e9dafecd28c5dfa8ce330a189909
Date: Thu, 07 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778159853
