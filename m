Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA28F2F744A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622834; cv=none; b=R6O721/m4DNZUnNY9NbiwFL27Tal4Yyh3fJCpJEgNAZyQJKXpTx1p+7VJd1/tfDwShFatgDgKHuWPGgau8O4186oN/NpK0ioWKp8TUxfUr9qBdaRGH5l/pDDSnl0N4mmgw40c6pT9g8zD8dfnSyZP3YohHbi3z26g2LumHKwwks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622834; c=relaxed/simple;
	bh=sCPc/FbdXwL7DNm/6j13B1ZvrUciYS/bXBUNpb9AC40=;
	h=To:Subject:From:Message-Id:Date; b=H9eSMI+Lgxibe/ybRMEKpW6Rr3wW1Upe6BIfl/HYY2flh4C0umP3E4+tF6nkWWJDHh9AcvSJnRAc2KcXsRhmb6I1A6tApw6+xNKoLXYIFGkdNJQVH7qPWbNZR6ybllU+mfbkwyxzxdKFaWYG0BR7/W216KrPzsPpRJZsO9WKUP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv1Y7Bgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv1Y7Bgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98A85C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769622833;
	bh=sCPc/FbdXwL7DNm/6j13B1ZvrUciYS/bXBUNpb9AC40=;
	h=To:Subject:From:Date:From;
	b=Qv1Y7BgzxH0OhN9RC3y1iYbKGwDHAy+mUREVaSxiOUNVTQ/XLmwzRlQG13c7OMxW1
	 yQLMsgPzIRJ2xynnKv2AxGMQ28G60tMFoabN8IR9G3EM15wtBYf4PEJTvB7al3XY/H
	 FUFP/rzp6eJZtqnW2HdFDCnsO8xT+FAU6XE1Owo7nMvZcKzOvGypunqZvBoN6L+hgb
	 KTQhaRMwNwxVhxnoYcroiKr3IbRxTbo/07Gn9epl+Fql63GB5M9YMsf4859lNQrcb8
	 nz8ro5SliluWhcVb31kHp5BXEPXNFG4Bh0i5KRpQ7l9h74sKPXffwah3IbyyNEEKfg
	 FE4H/pEsMv/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91628D46BE0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962283358.11872.16180784409542531624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f3723cf14ab12e02db601afbd365fe481c607918c239be9acb5c99489bdf22
Date: Wed, 28 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769622833
