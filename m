Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00FA3D4104
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774340694; cv=none; b=KIli0dHSZI2WX5QBwdJmel41W5GnisByxD7fkvCgYVSa0tO+4JwQSI94u08gCGg+Kjivg/GtnmQT1VfYJQWLCwohkjSeJfaI9UpCYq0hexsqdIxXELDL6k88djfpYngKJdxjWQSQ8+U4t7VimTNFhm1CYdlnSRztzA798aPNBGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774340694; c=relaxed/simple;
	bh=y1qwEvjC/oaiICeL9aNxRZ31BK9hmRXWr80kLwF5p3s=;
	h=To:Subject:From:Message-Id:Date; b=Wf0j+Yf6S/o6VS/oY/+uBrvBhexOIwYWCxlDqIGleeOlfpP8y6ORvQHy65A51dpNh2kmSsct5P0Nmv3rWBBBOK4PthWHq8S0f1Alnf7JmOyizT2mVwv/kzkGb40/kwyJVUh7qtB43PF1F9iQg/qBQPi7fr6RejyXGCWtYGhjl6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAhxr3/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAhxr3/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC2C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774340693;
	bh=y1qwEvjC/oaiICeL9aNxRZ31BK9hmRXWr80kLwF5p3s=;
	h=To:Subject:From:Date:From;
	b=ZAhxr3/gts5AH5/3ZQ06mOroNuQOX2fFsoj8CcufZ83HXsFVdWAr/9XkCF2BlFRiE
	 Q6DZAsBn2xC5A6Qjz0eN3sFDzYgs8BcoXNwirBueKCAwVHHQB/YSiOui2QyH3wWez3
	 PE4b9sEVm04zp0VVysfxpu73iXnpGxQMSG6JDHs6Oqlb/f90mRqLUoJ6KYqq1mwQ9Y
	 vZ0HjS0BnUstmw+xlczBULHqAXfKiSpfPQTzI+ZaA3IIEhPzFVXW/ye70UzsvCtYdS
	 fE/QQc/xQZVrNQBxw6/82d2lUN9lKmicMaoM4frpbCoh3gwBt6VEKAG4tN/+oVZtte
	 /CJweTW/Udo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92414F532EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434069359.24924.4484563140755090195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac16bbacb254b7d833a8e2ba3df2930f2fad16f486c5e544eb583a73a5cdea61
Date: Tue, 24 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774340693
