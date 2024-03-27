Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E351F63B3
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711523297; cv=none; b=jxDUT2zCiBEEQSCWthKnbsCSISeH7rIFLDZ4+xJ0JnOIDSzhbNjmE15UlFKso2yNIZAt4yCLfX0ZCI/wAtSBXof41lmdXme1BlibgKM7Ai0HAUs+aYhJuxVBLpb/QB3WcRyDAy1st/dEEuAz7F6/SWQvcu0aK8Iv+zwQSxCwXN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711523297; c=relaxed/simple;
	bh=mDzI+8XlAo34nE0AJCRXGr4k7M/H6mBnUUgOIh+VXk0=;
	h=To:Subject:From:Message-Id:Date; b=uuBBKjzxzaEUH5CbmyFZ+/UnsDN9NLxY4BmBzlyOG5EhPx5iGwm2AhXX0T4zQX4SBq39hmMtXqxooIiPN1M2Lns4LPk3rQqbmsv7uPF9IeKInPZelKg2BAyc7+wJhktKGxdI9qIExWkwrRio6i/8GVYSZOLyVJZWM1k3gXTtb3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcupYppt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcupYppt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BA0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711523296;
	bh=mDzI+8XlAo34nE0AJCRXGr4k7M/H6mBnUUgOIh+VXk0=;
	h=To:Subject:From:Date:From;
	b=FcupYpptxwZUgRLyAS+NYXh35saXGB5r+xCaTHuo5fuKf+hwgIiD3mhQGR3esZe54
	 Lpbo5SVmvH0w/Hkuz1m69tfr1Yi4nS5bOoRy99H6aj/3SgqU/KItpQToFVwLwvTtPB
	 YxBFobZH7yVa5mW6z3rGXBALESZrbLS+UEg8kbkF2GQ4h6SO2CX3kAeWo5J9M9bo+R
	 PlkWVXO2KeYv/ZFYt1QnYqvW+XsRVJ1KyVHESefrYes863Nn0eV6Yx0iyFTKFjCbgu
	 b2cg6ACgbPpVBGOTyZU7SwLAZYEU3uknd0lrrO/amD7u1RcKVgQjQM74hh0xlUPnIS
	 Fe+3tXTfwDggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66353C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152329641.9024.15277618523820196149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6fde590bc44dd2a83581f3e1d7970fb6eee5b8a00193fdcc5fbd0d54c1e251
Date: Wed, 27 Mar 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711523296
