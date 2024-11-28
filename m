Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499EE537F8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732818354; cv=none; b=SCUwsoifMSFFbj+nODpMVZ9jZ/96wYlKoa565BdvlZC/M/du+r2cGk5nvQypVH8SiHKwmnT1AnsRWpPu/OA8TQsti5SmQJRGmjxVEpmkIlPKbdVU562EY09bB6dHmSU567rruHQiHwpKUOPnuHugvABUwe2CkgzwGxQkZRiW07c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732818354; c=relaxed/simple;
	bh=+v7hVzyTFRnk4AfugLzEtkbdSTKMUjN5ml2XLyNUcNA=;
	h=To:Subject:From:Message-Id:Date; b=DLmnvwqcTAGbR0FLk66BdPJQcp0iARlMtrAyQJV3qKZJ7SG4O4BbBxj088VqqC7FcvLu8Y8v7081DV9+j3b/1M2V4Kjl+rBso+++HFnFNw1/Lb5DGZhUB5C7qJZiSpofg93f3++C8630OeEQgExHZ2hP8Qefj3JI2Ilts6IfJ88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUbw6Yj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUbw6Yj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA20C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732818353;
	bh=+v7hVzyTFRnk4AfugLzEtkbdSTKMUjN5ml2XLyNUcNA=;
	h=To:Subject:From:Date:From;
	b=sUbw6Yj73nDBfTsxRsYUFNeiXdqnZd+EqrvpuWxwAfk+gyY1zQgBCJvXcqLIKOxzE
	 vRpVrTkUPD48Cmbt39VtYxgiBXhVYlXTaFmTqC8d7Di5G1VK7GnCkRkFaNyFSPqr6S
	 7xCloQYctRdWyALBga4REi0KikW2Om2Lui6ri7S6KxkYUUgEhO9/OT8MFBvRJRLvIk
	 GrzTdhgtlSVWp6v1Dg/wD6odlPCiceq7zf6UB4FveDuNsZEYx5tG1mjHyzbX+e1rxm
	 xJsxa4Be9vzjSAhzrRLnpoxnV4EYiDjNAqm5hg5oiYzumQAt7s2uBWfX89QFw4r8AT
	 d2nYY0K3BQr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6393D70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281835363.31791.16536877706744749784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b343f06e576837afe716412ab9badd47375568c0451ffe1f296ebf79d4d9f6
Date: Thu, 28 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732818353
