Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A433268C49
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741878534; cv=none; b=CUkGbmS++z5NivFMrB8IT1y1kdipUQsOsoWpeTA2b4rcdR6xSnLWF0fCJ0maSSNm3HDLR02L3Fl9u9CN7NnNK+MFoACCc5bCgTlJFzBiDDmPA2acihV9QHWB3etDQBxD6ZaQqrgxWZbNqxXz6+xYYk2vVzcOs0s0oZEgF2TiE7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741878534; c=relaxed/simple;
	bh=TW+x7sN7z5lOZXmDQn16nASWRnBTIXCM2JSdT5sPEOg=;
	h=To:Subject:From:Message-Id:Date; b=qV4ceF6sG2EtLfHILrOzIZwHGMflf789St5jiHzUQfbQfbj19/p7hxzLN5D/f5eWDplSxRQoPzMGiLtg/RlHf0c8olaHAWbRrwkDYVLlqid30Si5LFz1O8z7NSVJB45SyTrGyHFVDFfWeDYX7VYS+Dsun0lR5q4UQzd/EWYgtHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqNWnQgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqNWnQgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92A3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741878533;
	bh=TW+x7sN7z5lOZXmDQn16nASWRnBTIXCM2JSdT5sPEOg=;
	h=To:Subject:From:Date:From;
	b=HqNWnQgYNIgDddov0GMTyssoTwXIZC78XEScUSbGVnwONqZA8Zs3uBGBK7C3HXwGg
	 hFxz5B5FHxAE7ffhsMWpB9nx3K4aLfyfkGvjIYrlDFxYCBLyPGYr4H8Ywl9KJuwwxu
	 LNK3rTVIRET0DHovTsBlJ40Z5VHKI2Pe746D++VENOmdOZbuSsFxQY6b/AUt/mkgBP
	 z+cOYAvGiod/iRrZqVyadnHANxd2yJ5bKTAdGbXcuCM4qNEMFtCsZy+U5sSHNME02X
	 jdhURTK+axRCukLANrjuCxcN0P12I+7711P4NOXo1btFKsIZbnzP0Upvb9sYfGJJyP
	 gJ+EpueZZq+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63E1C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187853366.21862.12771780498618975744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695a71ea9016dd556e744ebdb9cbd7f328beb85a40e259321ac22ab7fa8c029d
Date: Thu, 13 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741878533
