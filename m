Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6139E3264D9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781616394; cv=none; b=CVg0L3VEDHu3LyGCyIJB1gvwOKaX+qUi+xoRQ25V1wkju6AZ/o0i7SufJVndFxBI/WUUts3q7Oznrq7c5Up/nX20kzAtsfhQexTro6tBTi2jbW6h5mXkRew0EYTtsn73HtHpPcayTcLMc3h+/ApDOjy/snf2wBI6Qt0QlZv/MAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781616394; c=relaxed/simple;
	bh=MZtJ0GJ5xk4JbvQUI3IFm3t3ClxiCX6JBLOmwdcxb04=;
	h=To:Subject:From:Message-Id:Date; b=R3UThUOngdloadjwQ4wxbY/3PdDzTiXTyJPuWSxXGW+D/IinpQmyxZ/dfhcbyUxRpJDt7LizBSRXH9t4X4K1sI5xf/8tNagmNnfXDjpIKSFRppGfTfnQi8KshCZI83klju4SRQHreJ4YHdj5Nt4IoJ1c+yENOrJfPLzEETpDkU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9c5GNSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9c5GNSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1623C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781616394;
	bh=MZtJ0GJ5xk4JbvQUI3IFm3t3ClxiCX6JBLOmwdcxb04=;
	h=To:Subject:From:Date:From;
	b=T9c5GNSn+bCd/ssp4NXzgli3jAyEs7iETUyzEcPdFrl7vsVeYvmnB4/+bfq+l9FNw
	 fz4p/r1l8Xd1+UubJyoRHXIebWzykv456zr4W72VVAf2TqN3L3a7LsK0fEufIl3qT1
	 cqrBGMdcSWu8cONIUwF2eid0wgCV7OEquxN4oVCyZOZC70C9ZhVxaHukbKLjgf7gH8
	 etkkZgEobWMEP3gqECAf4vI8XvCo5g9CU7zKtejqSWT0nbOxRU67C+fOLM+F32XiKu
	 CluzG9wow+SbFTA/K2f2aSNo9gMJqN+EqI5ngCkXZpsxrnQDpYsrPNj4EISjQ1CGoK
	 dl5OHhZlUeC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E12CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161639376.26011.14703903491110923176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7360af4ad54af1f31b820e7e6e3ed5e2029edbf27edccceec901a9fb4803133e
Date: Tue, 16 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781616393
