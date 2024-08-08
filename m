Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E43189B81
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723111554; cv=none; b=a5w4WoZk5Tn4qnwjn6LxjzWWtAoaV5qHRNDbCEkAzA0dtgZz2QMScUVP/hNqbsi8Bs8kS1IcsOx65X6VDcebOOcdjwjOxIiA9bk2Wh90ICHRU+RF8bC6Jo/2DxOSxo5q9eyMU0ZI/4v9+tMX5Qlc2a79fhkM7ulU/5otxdRg9gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723111554; c=relaxed/simple;
	bh=XfdR2NZW8KkTDRKoWm0xXAvLzTOTooAcf9w/aHwl2E4=;
	h=To:Subject:From:Message-Id:Date; b=khEJ2DfZtOq+ZseMGdk4uUZNo6N+8wySoWmDSugEN6pyzHeM42ud815BGZXkfO+bYMPrJjr4UqqELvqT1Cf1KVzEMItRul1/MsBa168YOwkLawAkmN6F/GAoD/WuOPCDkUxufZWL7WLa2Bi9Bu/QbdSjNNTQI04NbvmfoNTOkNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYR/xqoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYR/xqoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B851AC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723111553;
	bh=XfdR2NZW8KkTDRKoWm0xXAvLzTOTooAcf9w/aHwl2E4=;
	h=To:Subject:From:Date:From;
	b=lYR/xqoIr7wceqWaAJONDUDIXHv8FYsq3ut5eZaTM8Dlv4+UaI7MH8spXMu62F2Eb
	 F3YzjjFpn9PX5h2S+6sFpAPA2OZ3BpwxlPZpYA87ycday/3e0N48eIzEJ3MV1egV3/
	 uEzhnqTiPcpHAfyB9a8YklgUFxvnq2qco5T+x+xKzUYPyAoYuAG8dWdVJPW37Lqei5
	 rMk4Ba5pFwYWJyL+aOVqexkqOQHcZKYsKxGjo3lNzQvNVKQXa3zier3EXa8DBD6u/X
	 PY419I/5QxVsuvLTrbPgAl26KZriCMce8He2jPUtAvscZFQRcXf6d2jiPuGAHOrPtc
	 HWoAAW6D3Y9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A307EC52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172311155364.9394.2478659279180512447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6d9d3c181f3dbb78223328fa4b7018640085d83014d6029157bdf9ecc354c1
Date: Thu, 08 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723111553
