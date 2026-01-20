Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE93EDAA8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920834; cv=none; b=f3SJN/ZepYy6thoIrg54o3iE4ULjTr1Z9IqoBgxzuF0DVLfOQQ+fOR9hxBwzkKBtz7ouz4TldW5SUpz+PKQJiq4mVr7lVxvjzJcOUbg0xek4opf47/qPdRi0DNTeBp7a2GBkCPrgN628/md5mjHdNWkHMrOGmCJGrpYy78pyda4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920834; c=relaxed/simple;
	bh=TjD/3PqUV7H7WYduDoFvZ7R2sWEIB4K1h0eAtiWIAkY=;
	h=To:Subject:From:Message-Id:Date; b=j56ZMg7/nQEaQNANJNiJiWkuXxenO385wpQvQcAdi7hWriHztoDHiEw1GO6bDd1h/qMWNZ5YbrwS2WPPiR+RZ6/Md+sx+X/eNgdnFlWE/9DuGa0I3k+aerQW97ECd5Gu7X/DAPT+2aVxlw2sEkXoMcfh+27Rmleqes/0sfW5+VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plpQh3qP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plpQh3qP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08ABC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768920833;
	bh=TjD/3PqUV7H7WYduDoFvZ7R2sWEIB4K1h0eAtiWIAkY=;
	h=To:Subject:From:Date:From;
	b=plpQh3qPO+SDLoevsaTsLHkXbazafyeqvbIoZmotCp37+8upuMFl8BWcf4VgBCVg4
	 43ptwiF6ZlBzSf1tRZ9NXqhAqRVTWmjkpgbJ9Koh/KFAMIPf2mh2C8Fk+IuFEZFxJy
	 jxZfIUWhcBxxCW6nPlajpahPxITJuNuqPY8p6sWtzWLZ+ZAOr+PqvDzAi66mflCnrW
	 vCERxWJEaBh2m+rLY5u0mkxcIErGPBTJoUdc+Fl5X9y6SN9HE23jc0a40HK1vo+S2a
	 alOob10hJrLh2R5+DY00z82y74uEDj8QnpIopXKT3qAVhwReEUeOIz/OgN3KOKu7gh
	 eT9ZyO+vuoI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D3D2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892083359.23276.18154106433924108395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3f191d2aca040b255e8f7722145c03d78cd6914b079110f8669d7073e43c65
Date: Tue, 20 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768920833
