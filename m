Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6009B43ABC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717344923; cv=none; b=eCRZEdjW0JMf3n/WdxjM5KZ/4JQL89VDQ87iIsBHVj2GXrBAWIl4I8lyXVachiNN/noXGcoTScox7ZzA/KBSacwC/+2+sXlTgSOiijkDW9JjsF82vKJ7D5u8Rr8awAv0a3rVi3Y+BK52HWJDQSogjTSoBpY9Nxut3P4pSrEG+YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717344923; c=relaxed/simple;
	bh=NDGd/d9E3IXQWdGSm+yMtsw64qE/b+pu4O79Xaof5Ko=;
	h=To:Subject:From:Message-Id:Date; b=qo90Sb/84tR85O/ealRBOMfugkS2yEa5+ICXy+JTB/lQb0naOI70hruNmFoKrqp0fZa0yaNWaq6Tjm9qvJWoFxzghgTWAdvqHpGNtCPWgrU4yae/vSZ8RZP3dEzswHXbr+9UnUGJy1Z+uD7gvQ5p3I6P4wTZ1Vko6QAdnoYA+5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9N0g5yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9N0g5yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF45DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717344922;
	bh=NDGd/d9E3IXQWdGSm+yMtsw64qE/b+pu4O79Xaof5Ko=;
	h=To:Subject:From:Date:From;
	b=V9N0g5yZQY1IdMKR0D72fdH9A2q32LwcaB31xU/ZoK9afUIcLImLyyPXHYyS+vrzh
	 GM+wl90O9kBJLKbq8eTnuXpDT7cg1CWkDAJxVklnM9QJJt3t7VFM0cbhMu32iLNBXk
	 yWTvuCtY2sN3yA2s9U7gGk7g9aeFJ81WtqgblYtX/KFnQU19VbleZm7gHi8SQf5I7C
	 2CrhHimpGpat1tYt7WxBY6B7+7fVrrpJeLygkQkvroB9M9Foc7+YH28WIafyp3EgBg
	 sjcepkNmSrBjr1N3bvPi/BccD17bBabgS9+wxtR5JXxfhIU+M/HfqzZ7AV46F+iROz
	 iQwO9+NS8LvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAFBC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734492276.5552.11637651297675146382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5af65bcd303a856a35f7a2174106fefc22997acf1e31960e914988d9c47820
Date: Sun, 02 Jun 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717344922
