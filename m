Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613EE330B07
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791146434; cv=none; b=JpBZU6K9T1jJCAaMBYMxDfBQ6haFcawhZMizD4Ere72FfkDXzrCe7wX1L2nHBUk1Pub8S1HsjJh/PQNtBEcyXt+tpKWlAsJqAuaTTu6xqD3rnn5F3qs/7GjlDelDEP4A1lYGXS2ZSETJOLbu8uILgZ9JBK5wt9V8WfJ4pxmmfM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791146434; c=relaxed/simple;
	bh=Q2T0ldmQNt0xXTEvXK8eRhuoAJOZCpyoL39xAKicKUk=;
	h=To:Subject:From:Message-Id:Date; b=RACgQ+9OXUJknbsNsGS0vhWWsfT4TdcaIyxzloEhiDewBE/hd8dY1hGrnjsDELCjzHYazKrqqLMTkOyfevBZ7D3sPvHmK2H0FFwkYjcNSliTCnrMTt3m3mdzSy+bQVA44KVz09UvlUixmFs3Y3Z9/jtVJSVduEV75+3YSXqneUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWsm584w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWsm584w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80E4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791146433;
	bh=Q2T0ldmQNt0xXTEvXK8eRhuoAJOZCpyoL39xAKicKUk=;
	h=To:Subject:From:Date:From;
	b=XWsm584wVEqx1H8RxBWU1GuRIJH+o0AzAsmvfEmWD2n/8W0pr0aLsOoLt7A32GpCX
	 ry7Ui/HljBXnpJPSpUBP4Sx8osguA3yvACZYWj5Jg8TG9TVCQ5oib8foT/MsSL9IaT
	 oCxKd4q1tCP+vPhofaNYwZlsLaKn6nPkHvVvic5uSAfrO4E733RzdYiOtVLYemH5fn
	 og8p/o2qJ2oCVxz6COF41KD6VvtdOwfe0t6jMu2FM8dH9G3FRbWXYYLbxhNhOWlX3C
	 EsGHhcsPHyVFO25XaAAMdJGUXSly2wyuOw+TK4Zu9JY5Gvcryf0JehFYHSKmUupK37
	 2rVXhEY6JIQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB99CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114643368.15588.4703704497975975196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fd1622a1c20939919fefedb2015b84f81521448590cfc6194faf334539710f
Date: Sun, 04 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791146433
