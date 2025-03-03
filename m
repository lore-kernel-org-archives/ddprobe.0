Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAD44A3C
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740984534; cv=none; b=E8ChTnXCpYEZNQsscDNvL/Zief3zdTKX/w45GjCZIbYQEYAm8gDUCTU2utrmEPkDqYfBweUP6F7h4OmnkyeNQ9/QJw/l5/UhzeNfgrHtKXL8qFcvIcx/my27dJW+SOpOlBfGkCnYSUfP7wKt5hrCX6mMSkIwD+Xo5T+09hnTteM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740984534; c=relaxed/simple;
	bh=9LmIMTIoSMJ/2Km6Nc536F9cGw/7sdNCt4bvUF/YrOo=;
	h=To:Subject:From:Message-Id:Date; b=aYSNir9D0JY38YGSiExIdfO1CwMlez91tYT4PEkBIEzJcdGLdwWmaucp/7P5++Q74brjejwcWPPwsFVhlpnV45wguMpXD5AlL8hcV13UD3wLUEU/0rp736pCwpItcYw9cIOvk/L9YwzXWL2J5rWzy1dtCMTdQ41mkXk+rMaoKkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkpEcmW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkpEcmW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38EBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740984533;
	bh=9LmIMTIoSMJ/2Km6Nc536F9cGw/7sdNCt4bvUF/YrOo=;
	h=To:Subject:From:Date:From;
	b=bkpEcmW982K6NoABwEoYX2UkKpIH0kdQFC7Ub0cAUBy7WFywUMpvVKuVL8RUb/+8E
	 tVYAzIgkzDhAJcAJ149LA2EUiR4iKk5XPf4eu5GQ8MKY+N66m3Rrp/KHwLpGALWVa2
	 8t6lpfPv14ZcbguqaeunapYG5gVvIwIFEgTBxmt1BDqJ3gb67LJ3Dv6bOoXKpGXDZj
	 v0BKS9z8jF1lBGLalKmVul4Ut2shcpuxn3TFeUExPy0zIH+OSXpFVbh1uvTlu7wVsK
	 x1Z3Nigrzr6zyENU3jceTTmIfWehI5jN5J+DnhfJRak24up8SMewf+W/p8q0bjraJ1
	 ByxDzDnVQWY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1FC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098453357.14168.4183214389523395789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794341158132bbe4e4fbb7bb6e575aefa326f610d52a46707441c8d19ae4d629
Date: Mon, 03 Mar 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740984533
