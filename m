Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA215350B
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746210594; cv=none; b=d2NYgsO/DStKdD4s1K+qOGaKK7WY4huyzOfDLNTMJIGIs2tkNFHAIXwvIcHaQ47eJ04r82IgUbYaJDXYetgoDeb0qKjujAfxX7GF3mZoXznpmr4Yh2xBFJKIjD1FYtgKomFbAyJhsXNrwpyy4L5Jw1bTcnX4VYYI7HlxEtsKAtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746210594; c=relaxed/simple;
	bh=ou9d7mJGbN3V02mRcO7DZJnJUuYUHEL38wasJzo3Hy8=;
	h=To:Subject:From:Message-Id:Date; b=Oxfl6EwYX3EU2DoWCAPs1hrGE6f8009cpC6FTuL3HExp1ZtiCWTJrw48I7CU+ZtmMbZ5VXjACeSQQtg9Ek3Rx8dRdLcWMGcr5YmI3+GiygutmZDxmbuQnKcq8UJcfNGt3SPEYz6iXTi8CT8Hoj7ily2NnjxsQ1+Nr2LZVKX/xcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8cPNi0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8cPNi0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA887C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746210593;
	bh=ou9d7mJGbN3V02mRcO7DZJnJUuYUHEL38wasJzo3Hy8=;
	h=To:Subject:From:Date:From;
	b=s8cPNi0HNexSACcJAEcyKuYE5aJ1SbXfCh5deeE0HYyQo5oMD93YuTRUumk4M8ugE
	 4F9tYbzKohR5i3ajGCN9CMg6jKSoJTKqx1Yz06TW/2xPb6oFPdViSYXV7QBZ10jaHi
	 8SxziXeI58Mvev4lwxtSC3QFWAkT9jE47AQnu7VpcuKPoy/iwGgL0I+Dm2HXwtFo+8
	 k4be/c4TJyQkVwaAtpIZVaag4Qa+ChPC6YGGwthA7XD9SuBZ0bPq7He64DTIICO05T
	 JQJ9PNxtsL7yKYxHa0EE2jXwWPMubKBzBYpsiq070OxLcoBa7CsLz79ElDNuZGcvGT
	 gNHiehaW5hXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D9CC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621059362.12435.14682021458503596587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6991379574bc4c302efbf6898f79b1d6a96226379a8de221f560399f31352916
Date: Fri, 02 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746210593
