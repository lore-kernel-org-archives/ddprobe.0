Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FDF366
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734135354; cv=none; b=rZ6cKiHCAd07/z2iv+34NjVIGs6LsDp2cl/PqWZ6mSXHkDSOAmbfLYpluml4PnBu0eCLWQv2+k3hx15Foe0yE2JZaol3uyddZ+gcNNSP0Z48/l+CoIiC2avbawZy19E6OSxcTE1ygBimhQmo1rKflgU7fIob0gFrMnU/IbKGOLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734135354; c=relaxed/simple;
	bh=g1wfwnX1COwxNZo9Xx0TUPOFwZKNV6RxbEGkTsiQ0/o=;
	h=To:Subject:From:Message-Id:Date; b=KHfxN0qOM5jfSTLPyo2Ixz9IFeUIx/WW0nS7TqJ9YCFKVDh81p41ZUsAAuyHDoqP+MQsxo+rT71q08Eota8Ywt8uL/qGZ8oyzytEwgaaJhsore5+vAW3fXl24y/hAUuiqtDjuFjL+WLiKFWj3WjqEhVoulSIj8gBAKuQEYWNWsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kftz6x+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kftz6x+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C36C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734135353;
	bh=g1wfwnX1COwxNZo9Xx0TUPOFwZKNV6RxbEGkTsiQ0/o=;
	h=To:Subject:From:Date:From;
	b=kftz6x+luP43VQwh/q8MEJ5VeFzOpnBrcWMQ81bTqQgFkNiCAQZtIK23Oc630zBBC
	 RKQI4jFrBFSy6f1Dxn00Be2Yx3KSYz5+Iza4W5JsANwFMYTw1lOBOB+TStMXycZNvH
	 CPLqLZfZJ1iTz92Y2A7JiWDDjuY7oxKDkfuoyimXBRIj9PR632WREAeNhCuorf6/rt
	 GbgmFwGadMDwdKN+Dx5InqA4K4Uky+H9jSMB3wuTCb6PqQLNfAE76lbrDz7nsauNbD
	 0aWWLT3V2ZuLI8GLaGmJS9NkLRhaIS/5CxvJvDlUxc4RM3QEjGlKXb6vOgf5tVIMSu
	 FuGLF2n3gWwpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967FFE77180
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413535360.18406.3036353713418953690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b948e0dc7aaf6ff932490826f1cfa3b19fce300fcadeda5de9093d44156af074
Date: Sat, 14 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734135353
