Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE42313E15
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779465754; cv=none; b=rM9Y5KocPGV8Ckd7FXdCWgy+6PV+B7jz9ba3j6Qd57cqyHKUiGvLF1s/w+Wql9/J35uCxarqMVPuglbDjJu6Dvz3Jmo3Ux00xfOoiZVXMgMaoJsv8IRmwd+0YbTxCw4LnlwiasNOhZgT+xXCS6NiVRLlxuQArCH0w2iiDWTnJik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779465754; c=relaxed/simple;
	bh=dhTObKnRaJsgCCSKrn5Gx4laIxztaBDsy1kHBV1mw4w=;
	h=To:Subject:From:Message-Id:Date; b=l+XhH3ofANjAVNNDwPIu7olvnwlXrwh7h0PujSqTPdCmcri7opjTwUkMe8PnjQBqqSXJWfP6TlN9xWHxu321IeP1RqmS1swpQ+WrjQLP7RiEvakpihbtrVw7pSTbox+jUSxQMJOccuXXPzSyse2osz9j1u+FyhWmZmuAao2FgfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA1EswRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA1EswRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2393C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779465753;
	bh=dhTObKnRaJsgCCSKrn5Gx4laIxztaBDsy1kHBV1mw4w=;
	h=To:Subject:From:Date:From;
	b=iA1EswRncOyCcvRNVHjO9B1hMct2PA8qja8HXB6WzO36WV7yTYRG/pQnZJmHD/Boe
	 ozbRgyT0Q7a5+VZVwY1X6uEoRgO+R0i3vBKnfiGqnduy/Unjo/qiAr2ekt3Gz3Dhey
	 ZTZSeVQfbcLwQfmEsM1kudaJEbXm2fN9kDGNP7vaC1rM6GjmXkMMzbgeoYeF0loU91
	 2y5WzMxFrGb8Q+S7ofZkq7+mp0SXKKYbr7/IJLaHOKRpC42VeA0LIdUF5Mzxf+7+m2
	 R9wLNNftUEc8SgxtR1bYHUEBtI68bw/dU3sYQtxhAluxqdGjIE2Qo4BZYRm+S/tv3N
	 yw5H0tLCQnxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96AFCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946575368.16778.7663807049866843061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771f0a2097c7efdb8ebcc3287976b202f4fd155583a800a7024a35ffda82e1f5
Date: Fri, 22 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779465753
