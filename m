Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868054774
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786918834; cv=none; b=iuODOYSyJuHkrgJdvSE8tfDYqjaY5XLZ21ftykWjwDb7mNLDP99tHmJPyhASfhjz29mB7Os+hcOrqfZ2/ZY9rovRA6d4y8XOlteHDIZkm7jsQPTlTQzfZFigXXMlYFUiWuW7eAGRkMx/6J17AvhK4rNQzcfAVhGZPyMElC8tmqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786918834; c=relaxed/simple;
	bh=2wZUQL4egOU9Pj+jg6jk9CMGym9qrYGT4rD1PA/2Aa4=;
	h=To:Subject:From:Message-Id:Date; b=Z6vWKqvzryl0+om+z8lUpss2cjLzRgdsQhQ9ZaLCESoLIC1EeGNR4gbMkb8pFS5xONzCzCmDOdAoMh/4yuXB7xx0g/Uje4oOHIPe4yk9mErzD4ZqFK12BakgsqP3ivrwf2Oi5b7IWzsnX5VFRhSUxXkjuo9STWJiniDmva6FdFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBU/+yo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBU/+yo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7DEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786918833;
	bh=2wZUQL4egOU9Pj+jg6jk9CMGym9qrYGT4rD1PA/2Aa4=;
	h=To:Subject:From:Date:From;
	b=TBU/+yo36I348eL43eH6bUySJGDMtQHMskmNL30giOJAM+Ncl5HsVv5NfnD8fz+7/
	 tNBbo4iiSQ0SkLzUoWC9R8ToHUA9xbmp5bfLVAlMFYcdxzUCDzCGBWozxS+IeJdN/W
	 VcZ7nQbUxLObVvdjTEoU/7O7qCI00/lbl4/RnL5WcpBPQWXckyOstkV7r+DWVsk7Mj
	 ykxT1ZdEy3kEqNwL3WvYiWKjQqUmBNZnKB6lFsXu7P+aLHEbapa8knT0wvUwXA7VkL
	 X5BjK071Zu5TEtNwegdEwpgZOmtXNUBleIzojO4hqZtbqswSBYhR18zjlectrsX2r+
	 PZ5AO3CRMw5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CCDC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691883372.23459.17198184119264531273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234548e54c6cdba76b92032034adf28b01223f93ded6d5ef2e1b8e8299175a35
Date: Sun, 16 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786918833
