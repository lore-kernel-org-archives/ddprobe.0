Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD6A139B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737467154; cv=none; b=JT3bgPeictxMuo1MuBQaaTGuAlbZAm4k4fy70Tq6CiKUqFC8msF6ozwwnY7XA2G5/xwn5UIWp875OnfmzcsQYRYqJ+RYuH+co3gSp75fakHEIYN7TFRNTcp0eo8cxgqVSiH1eGwJ8/4VfPqFK3Uu+Ie7qO7JF5rK9fArNl8+4fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737467154; c=relaxed/simple;
	bh=ft1dvpW4gDaY+r8z1gl8HYpATCFQ38XuWvmd2Dwoxq8=;
	h=To:Subject:From:Message-Id:Date; b=McV8uDUmVxt3Jsyy2cZtg9NfOD5efHzE+I9h2v+UbF45ob7/UkAz/WCXe+UeqEYDdZzRhRwZ2TJYNK5hVTm0I1/w8J2X//8efHBJKx3/dT2i/1UEjijlTa96sBzNOoCmVf6vp6xrBG2jSyZmrWG9MMVnx4Obiyn4kixSSL+OOTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5hDTYZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5hDTYZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C40C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737467153;
	bh=ft1dvpW4gDaY+r8z1gl8HYpATCFQ38XuWvmd2Dwoxq8=;
	h=To:Subject:From:Date:From;
	b=q5hDTYZ463kfWO1kDJH4Ailx0Y6JuiPNiHrBiviVU1jkMNYZ03E5ODam5Qcgw8NHf
	 MiDaz9hSCkJ4iWuWB3MxqOyvjvhiJPwlPobvIWUrZhEdXXLHIBWSGcut5OpPkCc+TO
	 9YRmlS1aIj0ZM/TEEA6rqRTJ/EZku6P+RS83AnwP2ORgtkkpjbbTh1iaaOHo+1nojJ
	 nza89kcXh0hG4xvKY4v4C9McSj9d/5mPzsC6LBZaFQjl3/75B9AIQeRBzS7rqglCMs
	 YLZwBz4F2wkeSjubNg3b9fMnbq1HcFZjfnjcNPcVKRd+OnHUFOgt2X5KbJ2JAYrXRh
	 /6hrv+R2k23SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165EC0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746715358.2732.10683658346021415018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac149658155472b187459b68bb6f381a01ca60529f575dd9dd9855e37803db4b
Date: Tue, 21 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737467153
