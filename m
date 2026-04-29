Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE5426056C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777502854; cv=none; b=otVCFWUtLIacOj2o/bkgG3SXTqBEXXeaEukAk7M779mh3XEsOiATxv6H3ShmPuL3Hzt7U0f5im3ECFLszfyXGVS3L7BjSjpseaw+zDfQKM+FzqHChmZ70rP38dZfeBxIZouuaNgKi/zhfupviwf3Q5QpoINgF0+omxzKm9Y+XjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777502854; c=relaxed/simple;
	bh=ZRx2H7N7nkRM2FcQDXh+TY7QMNpVl/o888UOIzIDt2A=;
	h=To:Subject:From:Message-Id:Date; b=XbSiMgWLfM1zOJaXUndslTrzo2iybGbgR3gtyyMgXYyoOLFY3kD4V2PDOso8poVamoZQtm1lrPP/kKVxjbXodnajtn+zhTbVD0zoj6MkiGeeBNcVv/Dgl0nqT8ZeDIxMc/NhHxro80UTQG0n6n6bYM1B1fiIgoli1nIn69wTP1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLLq6dXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLLq6dXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACFAC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777502853;
	bh=ZRx2H7N7nkRM2FcQDXh+TY7QMNpVl/o888UOIzIDt2A=;
	h=To:Subject:From:Date:From;
	b=QLLq6dXhnV246C3pFiYfxcIOMs7Hve5ZbmGvUl2IHhE/ysvDHhcKWQTmAKkMNZOAq
	 UMZgNPRBXCuJ1kw+F3L70x6NzSlX6dn3Ja5F8dfG6lmEJYtfDKXvOdKMBRplbhJldb
	 edMceWXp+aqB+BpNeywOOb+OA+u/m6mmCvLHoUYJvgE74HdkL+lgxQi2thG+N7FWVM
	 bFY7T6iVsLeqjKXeh5R79b1eMf2o6nkbcw15J81Q/vRntiWbH3xw5gJ3LOtOHYE2B4
	 wVTY/v+fPQEdwcL6Lp7CzLDB0FyG/KKav/R2xR1+ZmqlzT3DgXZTPxDnpNK6OEE63z
	 fwDPiYOkjib0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA41AFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750285368.13356.6999808642007912791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8193fab6d527611f8082fa083431ae13d2b293e433329bd5c56ed4537eadf8
Date: Wed, 29 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777502853
