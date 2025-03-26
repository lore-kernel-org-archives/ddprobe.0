Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A2B3D984
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742956793; cv=none; b=di5C+jABOjOkPwTL9NeX9mEFQyUaNW3d7R2CTCImFfWWQP9Q+kjCLpW7QOldnHH1SARjz2cLyi6ec+he8BkFTGl8h7ZzCtl3yzPY3pDmvMYHd5Ie7yaTjRnl0+MGk7DmXxDq52XthrValw7r0b3tdQJ+CkNquRmqlofyEZzzBMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742956793; c=relaxed/simple;
	bh=krG3jbdm3jDhretH7QoLvYl7ijcV0e28l6Xf/J+gTUU=;
	h=To:Subject:From:Message-Id:Date; b=EnvlQ8n3NtyLf4i0e4OlmChGuVtlJWXIQpmVMtYMEBQ8x0my71ul8VE7opuMH9Gr0TxWk1tMkaJOk6Cf9sOzBuR1G8bPp9zE9PWe8qwQNRkIFmYLAJHzkXQ2iTUC1HVPX6pE3ri7C/K8RlDC/QKGoZ3hf+oXaMWISZmrFk2NbdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TidPSg+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TidPSg+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51BEC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742956793;
	bh=krG3jbdm3jDhretH7QoLvYl7ijcV0e28l6Xf/J+gTUU=;
	h=To:Subject:From:Date:From;
	b=TidPSg+6SELYNbpTu64bFmuIaDrqEbPUbBN31aGoo6M//rS+1w9NowSAE5iyDVXYA
	 PI4PNR5HqtBeh0ht0VlAImRzAtX8N3YGJZFb67GFzqoj4oEq5kKRSxNEyN1Uu/cRtT
	 WyiSn9snk/OgbqAeJGgquV/D+Bf2OAmXEy4GVxpkpb6pEXLdFYmXqddsFsf+vr1K/I
	 ITMT1SF/H4XgjZH7EtdKYlSH7wjrcHX4HuyHkg1zAMn/Avz7AEADi9OELmcJ1Vwov4
	 nAm9Qz3sdnkedpSIn4rBcKrzMZll20xMzTyE7pJmKhKRxY9HP9t7luApqSgxi19H6+
	 jzpIgs1UiWQRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4371C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295679364.27952.18086498279505588568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df31c3c79725d405c739663552188fd3d58529497ea1bd97ba868a39c2288c7e
Date: Wed, 26 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742956793
