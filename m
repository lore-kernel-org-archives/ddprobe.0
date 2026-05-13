Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48971201113
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778680234; cv=none; b=emhQPfc+WwKqphCMtXTgvFbInDxx6p9+SlfIxUYGy26NjnH7xW4dHzYOW/WHL72GnXHFZet1OUpGHfOeX+5trb4oOqPnzGiuDiTAJSs/4FoQ5oTNCANkRxvBdWM2zQDmNZulmWKNrQyKhVm3kyPq2DlYzf7shJ0n/ptU4W1hKqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778680234; c=relaxed/simple;
	bh=lxRPMLE8Zt7P3hYlq3GNvW7dya3CO/RjJ7/m7eG/POw=;
	h=To:Subject:From:Message-Id:Date; b=Ft4AkA2S1CId28CrQ1Z3JzUiM88CZ1FwUAIr+Jnj72hK49SHqlodqhorWlhUex/EJZq087X2E+tePIg4/T/bTPHzaRpMVQkn3WPK5Ciz8+0WKTOd9au1up+i35E2gzgHhwv3flZD9AbP+WGjgrv1svmZNWKu4oVsD0zqax+xmFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0MTTb3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0MTTb3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF15FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778680233;
	bh=lxRPMLE8Zt7P3hYlq3GNvW7dya3CO/RjJ7/m7eG/POw=;
	h=To:Subject:From:Date:From;
	b=m0MTTb3gbZM/+jhMgtWi8VC+1nfiSG1yC2tC8IxorbQGcebX/sOJm9CikvKjAJBbY
	 GBxUqNOSLE966Z1kdc9RQQwdN31wUKg3DCoEgsqv+yoiVsROPp+y/h4Ww9xvk5zxVb
	 zYHXb5CcEmbmUhNRibxrPbXSl2ywAzJWDOoX3da7OCyRbEH7zlhT1v0b3Ahfi0fX4f
	 8w6rH7VwB8PtdvB6hY51SDZnKd7Xp+T9QZRu7iNoLrf+msNDjnXR7TIzkOHr1Iowdm
	 YCCNWfRsd6rELW478pRbPvcCIa87W6cBd05s/cWHppfP31SQ6lP6wIVFvUu2vFh1XL
	 sHYw1fSlrBsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC711CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868023369.2737.7662405845096147782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad165101ea5c2473ebec0477aa9c61426f7b097b3def013532e926d06bbcc93
Date: Wed, 13 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778680233
