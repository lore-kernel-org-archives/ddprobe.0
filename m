Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0126F28A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764268974; cv=none; b=ouzn69MtJ0RiTybMRrRa85hOPYmNLPOPtPBCs7qCh7ArvtIdd0DIZONLZhLIunytGNjZT59T6YRvdNDNpUhtVzUKxJ8oqOsLcu4Nr68awzNOvw3dZJnDR6VWqX+bB5SxI8FNcvTMBHZdWWRqONuu6DWjDYI0Xov6f0+28FslCo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764268974; c=relaxed/simple;
	bh=iOJ8b8synpfUUTa/0NhygnMgjfyhEefpD0f3a5w9Rac=;
	h=To:Subject:From:Message-Id:Date; b=NjQNzvFVBfpI+qL5F8liFfxJ2uGy8rWxYB7/PT0xuxh2fBN4x0jcnU1BLbHyhKD0x5NUQ8YdMhlKkizuD0t6UhNdKK5JlCQigDxsXebfs2Nt6O8ijh5rD7SG9LTAIsDz+76Xg7pokb2dMG4cKGCI62uLk1dnlF4TuCvotR16DH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaonaiaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaonaiaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA2DC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764268973;
	bh=iOJ8b8synpfUUTa/0NhygnMgjfyhEefpD0f3a5w9Rac=;
	h=To:Subject:From:Date:From;
	b=GaonaiaQeR3DZnu+5G4BlyLX4m8gM2OaHd5CpuYeUWNFYRv5sIV7nWKpw1PMnhkl9
	 pXqngjC3MM3astfdI5TwgiYF1pGN0tH7V/F8aBcSNAZuikR2tSVsEyBXZsQl+6tk9y
	 dzl5XW6UHdzFK7uEu+yLs/Wfjq1DJt8T7NfR0c2lH6lfpAjUFdErqX/+4RM2bHEba8
	 YNpYdeiEhqnblUoFG74RMYMsIVNHyfbI1R9FhMg16dwDk2ThMaapeM+Cn9mihldMjx
	 57dI0S4b6SmIvNrkgFtCpPQuA1JygwZYEYV5vA3XbUbHpV46Exg2QXxM/QLhNUUF35
	 DKZr0WPj57b/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8AD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426897358.31989.12684448706076755983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66dc752523c1fd529a7f00c1f2de84fd13e0bb1344f821c7a2adb45def2cc5a8
Date: Thu, 27 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764268973
