Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68FD1DF726
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739910533; cv=none; b=GPKO0q80oPoUzPyRkWrwvmjoMp+HMN0P+uQG3/xvaTqkPB9eYnEtg0wU8K0u7tDfofL49HR4KZulUxK3Wu1cSwZde7P7zYOAlf6xwmd9zzN3oPGXvddDIAmHFybUipj2YApmLt6uxNKZLNkSbICbcxLSHQX3vvJwZKuOkQGxUFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739910533; c=relaxed/simple;
	bh=7BwP4y1mjh2uF8CxzubBw/ple8Aa3QBxz+toMdfHMSg=;
	h=To:Subject:From:Message-Id:Date; b=ty1kAqlsH2YlVOCWphBineYDCRyXi8b6eKlVyYld1RExGZo61qiwHBmw/w91KOC24QCmUb3v7aIw7yBuqxOLfU0LsFTk+duJ7VBUncwFpmn6aRmzM4JciBcmzll2vYHJJzivPzdDdkVDlOjG7ws00M1sClgPl7vgANRjaqd2oHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6FTEj2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6FTEj2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D1FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739910533;
	bh=7BwP4y1mjh2uF8CxzubBw/ple8Aa3QBxz+toMdfHMSg=;
	h=To:Subject:From:Date:From;
	b=i6FTEj2lI9W8I6MjrwSJq3ievyuo5P/JCd266s+4qyraVNB84UVegPL627lprbzln
	 pKUwvR1Aqq28S7LkuQ3ObpPNoPp+/DWlr+DxlQ61Z/EBx2tvAcIRX6lXBKF6R+P1Kw
	 FXcTYToyLBC+Yqqlb6BuJfT4SxaiCZxZXbAQHy5Ah9yeyw1jAOXJExg1Rm1jSCHefF
	 fKG07Z7YUPKyprDEeL8bNHVcT1R82yAgrIy8CvcmRnXgkPynP/p1FOuSo9hEK7vAHy
	 8oBviHhyoq7+Vtlgi2BYto2A43y3+VPGoHF+NF2jw+xbAZAAWn7nQIxtitYzuntkl1
	 8tOhDu8VUERNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98089C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991053361.19218.1519251160586734947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0353e2f1f9d5e4f73d72829a00e46ae286ea2cebcb10258a10a05ac0de3dd0de
Date: Tue, 18 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739910533
