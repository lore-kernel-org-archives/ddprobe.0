Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086FD2D3221
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760889594; cv=none; b=tA8uwP0zYbCeKI/+9lXARFZVvz4Zo/fB5dIp7Jxw5uMe/MV4MYGycE1/qsiLLizw6P+vOlC0/ojp3PXXPPH0QoYi9+KZNl74k5f19ObUlv8UaiI9aOu8uKGhpBPh4Sfno0bV8Aq02INXtRoOlEPz2Tj32saOgoTh1jOPhuMDZxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760889594; c=relaxed/simple;
	bh=HxyI/HGKqAnd5T+UsrpZ1tMO/+0XPUmW6bC6KfI2VOU=;
	h=To:Subject:From:Message-Id:Date; b=BHV2tUKJg5nJCdhGNL8f0MVNaOcxawp4bb0McA23MtQqud5y1oAvBZiEH6JBZ2mISnEfDUx3knJEXJC3AWg+E/VwEmYE24xH1Thi4Qdt4/++iHzFjZ/bDKwB6JJXmoLCpZAunHAeV273Nd3pPvUVrtoQOJHg0a2zvPe5aesDJnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3ZbFAyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3ZbFAyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB8CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760889593;
	bh=HxyI/HGKqAnd5T+UsrpZ1tMO/+0XPUmW6bC6KfI2VOU=;
	h=To:Subject:From:Date:From;
	b=O3ZbFAylsKfuPJipN92iMmVpDwQCQfyIWUCsm58o4/sofMs173k8xv+CX7kS/l9K2
	 WWf4JzVuw0vqMfZMrOKHCz8nUrbat/MB+9zR+QkO16I6z6LvBpdVHmyw5WWmIU0F4f
	 MH8krYCMombX9m3DMYjLeHu3iFde1TjwLaBsfHHaEfK5ZUmi9a/e5xgKds7LhKLP0t
	 bwjKqqyOUDljF11ltPliwvquZMDRt3dBNv4fbjG2SFDix0iHoGpZjLDK6zUEteYSfo
	 Q398d9urc7+X/ct2sWghB23a7pKpk9iX5w64uyYWv+g7wB4n25j1ydQCYHg7S59wk2
	 vJwlySCQtWBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BACCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088959358.5859.12962482497540599411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24db545caf544fb1a0951bedd89694aa5e735a1ff5f8dd6fa94131242bcd05f9
Date: Sun, 19 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760889593
