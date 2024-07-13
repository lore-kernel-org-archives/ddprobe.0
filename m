Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D8619478
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720848563; cv=none; b=HnmeTeywASY2JzAF+j1N2KzbMF3kgf/pvoS7mEP5aIXa118MFPBwsmRDrCsArvFZOfTxbCY1U/Yl9ZAVX468WCOY45/aJG5zlx+7k3HgZ2eVZPWi6dNTPrNz+JjD8FTYmkm4VAsmTJJ6jy/1owQL5mPRnB7jl/I1KXQqbbVHEe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720848563; c=relaxed/simple;
	bh=v/59RH6xthi9jy2POkz/0f/POaETEVVPo4+tvqB+xpY=;
	h=To:Subject:From:Message-Id:Date; b=b/pwiz2pZFbIQmwSvVkapmW8c0ntEHjjGZm7hgbHP9qjHOOXaAPqtfL6Yjlzl2sKTbWN1veBCkroMR/6Q4B5o8A9aUbhYhxprSlB0f7l7tlkHKM/LiRfDtkoOzBlkipsO1mBDRIqA38iX9lZsToCv5X8lnLTuY9xte2Akfk4B24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Snjhm+pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Snjhm+pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7300C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720848562;
	bh=v/59RH6xthi9jy2POkz/0f/POaETEVVPo4+tvqB+xpY=;
	h=To:Subject:From:Date:From;
	b=Snjhm+pnijyehi+5JMKozsR0YUe4Cqo+GddZsjxOTeX2st2y1x47xBTPT6qGZaDMy
	 r9DdxCLBU3ugYx1UfUndMEWOUWomZtBOnOA3PtIXJmXKcBaRkAMo8o1E9GZcIunFhH
	 OEOwa2Tykd6BK41qA/6iiEeSh7ANSlBkSqb9QH7kIci7UBor8eMs6rMZfMuXbDt2z0
	 1TqT6T09vPZ/CJKBm9WZzHluCu/bzL8HL5Y9X4zGzhbHuNu3er+hE+u1nhT7JZqnwH
	 XdLdgUWpZKVWdYyIM/YaG/mwQ6Z4zJ7YxyMao8l2O+Mdc6z9TTObLD4X53CHY1uyDD
	 uVFYTKb5bJ+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C509BC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084856279.26819.4992041166040923330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb7f08ffc5e220f3d2a5d387aa17f047bcd4460d276e6936f18d189e4d7befc
Date: Sat, 13 Jul 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720848562
