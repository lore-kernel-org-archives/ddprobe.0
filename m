Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845C23DC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 21:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F0AC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675547165;
	bh=trxo4YPJ7dh/TtZz5xDIpwOwiWhUF4NwLJbFQ3iLVUw=;
	h=To:Subject:From:Date:From;
	b=R+l1Ex1xERKns7w3dlQg1EhlMzwORCyV1lUdTDmNHW0MpxTsJEwskfJXwzHpJZhcP
	 zQOOgsvtJsFW+jJtJW1FJni8iHZVKQYml2L9kKPZwrX+ATsf2kNjknJLfyvreestpE
	 AZ7KmTlLc8A8s09/8MUPTru9yVIRwGnArCEwpN6OO485HaGIO8HqIeuZQQeeOYABsY
	 z/40iXlPGIe8T1JoivgxmMkimMPwnz2YeuXVQHjuF/6muPn1mLTBCPszywGfXSGjdY
	 XXNZY7SfK7eDeA8HqvER2uYk1pYMuA5Xq4UmCd/fz9ukLPmdeU+torV/Wg6Dqty65m
	 /T26NkC51A11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6650C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 21:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167554716572.5061.6482373585435231944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8e2b53ab15f9da2a25bebd913344df9aabac0e36d17270fd29d0c4dd33ce5e
Date: Sat, 04 Feb 2023 21:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675547165
