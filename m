Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02498242D78
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762817994; cv=none; b=M2mnOYOOQPFXb9m6wANDDnUPLonSkOnMRrJRbwdH/LFkGh59u3uLWn8CQZ8SgoKsdS3OPEJaj7teUvB87hAUbmGRBctxIRrZjAaOMSrWEAoI0HDZ3D70HxZ7YQ+1LvQZPpldEjbmahybmBYsobrKdYYF1Ou2s8bbltUI/gYPPfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762817994; c=relaxed/simple;
	bh=UnEGcjkf8I9MjAb/WQYES6asOxa2tvjbeOjLVSk87CA=;
	h=To:Subject:From:Message-Id:Date; b=UwGEY+WjphVITD1CZV+ugMOi5+5e/FtQSm1Zo9XoSv35FJlYkR+ein0v70oJn55ddRCFsQthDeOJ5xMt+UXQySWY7DNtmiXSB0QaAmeb/Uug9BSok5BqoKJ2UlJEyx4K6cd3sLVcFnmgrn2e5oWpTXCaoy4XzCk/rjG2qCKoqaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psAJBTKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psAJBTKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF3C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762817993;
	bh=UnEGcjkf8I9MjAb/WQYES6asOxa2tvjbeOjLVSk87CA=;
	h=To:Subject:From:Date:From;
	b=psAJBTKpH0I+vbiYlVvH+Skg7GJGmC3RFPBbadILXgWUkzP+eU9fUFov0I4jgWe9Q
	 NRQKoEQ3cYvfy5Qz5KYvMModNhzxxFqf4pRGUrhKliko99hI5GPWx+Qy3u7yQggw8N
	 rAFyRLrYXImEtB2XuiJybMLjN04bWLOf+CRlqLlwDOqu/yTH1/P81uC7AG9U7rlw/N
	 VpIPFxcDTJHBFJoRQ70aG8XW8BnW+srdpBhSIOS5Vw7WFJfhcjmygmHD1TmPBuGj+Q
	 mPWV/JCA4aaOBWJIDA/MzKNJPegLZDnptRPxlx6bBXWqmYm64XdCvUQ8J5ADCUQuXb
	 J8723G4BcEKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281799358.28318.8792153866992253104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc3c33a1bcb9a8bdb875369bb9753c9b8887083a84aeaa1af6bd0c9057ed1ed
Date: Mon, 10 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762817993
