Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B1427587C
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747658994; cv=none; b=o3+MbNuPDAmspZcxzn3m2X+WsZ2bHgKb1zXtVLLxCAnnLqIUejSt0bSW1EPOYtN4o5ygLWtMGSIATaPE6B3rSsXBpCcmY+suxjWJrt5SRXRG7ITPL5sBPZAYqNsJbz7KNXJZaAxPYi3yUCvN6z8MGRLgZgFZCG9ol+XayyFeuUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747658994; c=relaxed/simple;
	bh=OXIUC9vn8Hj5IR0wsvpUqSB2ffvuAMsMX7tvftFVq/s=;
	h=To:Subject:From:Message-Id:Date; b=OTUxIcHdoePrO4HYhMdhVJXXTH7fTKuya1tCn0aXlOmFnrdhiD4xpK0DJwKJ6gG9YAnRNInCB75Ks8lrC0kW/FvnOcSxUJiusDMMKSs6fBTA2/Y4qcvjfuUj8vdbl0EMJTLT8ZASW/tzTlwUBbb5QSG6NdBgISmajQfjyKEQYcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNXAA4uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNXAA4uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD0EC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747658993;
	bh=OXIUC9vn8Hj5IR0wsvpUqSB2ffvuAMsMX7tvftFVq/s=;
	h=To:Subject:From:Date:From;
	b=iNXAA4uzVGK5dln+FCtujWSO4XGhR0zVkC5J4THCh23KTDwfjPcQeKqj68q6rBWNm
	 fEhvwHSwnzqQqZMsV2P/IYpObASDPYqqhYBoctHPdcMOqjsvevAfv72lVvrDbJ6mRS
	 84BEH/8rQoLdCbscV0tt766noNNRSdXx/Ekk7e4yeEv5ncxYCOzbckqXGlnWvpGmfm
	 V7BVlILIMdMwuD0Z3VgIKKGHosx3sy1JJnox60i56jTWvxHIJcHDP2/dXJxKGOW9Zh
	 HuuAim8G1qQnkMyBhPYjpFuNeXUY96MhVhp43S5GDhgpZ6bimfTARJPQ4iS5sGoaet
	 N2ALaCxEdwZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED59C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765899357.28528.12044579950775378750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f44128587200556a977a4206e4683c8fc47f29957f2ad81c7233de9ba0acff
Date: Mon, 19 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747658993
