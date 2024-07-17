Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A8717F37F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 13:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721223923; cv=none; b=B1bfP27adMnZ6OPhmTWAF8ATC059butX7pzH4wTCma1THhjxpAjzafufbLS2f2JglZlvWg7FGqCJDu7jPBwZON74jIq+Vh4SiB4pBtHUi//DCbQTq3oGJBunLHf3wWOKHPuphehd3xUiS2D0OdU7mU1btAJngeyJ0BNNAwHMLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721223923; c=relaxed/simple;
	bh=yhz0ynjY5Sz55mMtICtVca3xrFITKVDQOnMpAsY9u/A=;
	h=To:Subject:From:Message-Id:Date; b=FNxx5iNbdPR7eHlaeIKXnwgLGvvx6l5rylN+sG7Bya1Yx8MqNQ2xYOt4lyAZ+gfQZq+CrCOYqLlCfNJbUEXNJdGNwRf1xKaWtJw5/kHQvXOijV/gvOPb6CdDbqHqPO11+Szj6o8oh6MWxrff+g5xGEMtJuyRLaSLs60Pxw1JAOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjbwn997; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjbwn997"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D81C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721223922;
	bh=yhz0ynjY5Sz55mMtICtVca3xrFITKVDQOnMpAsY9u/A=;
	h=To:Subject:From:Date:From;
	b=Wjbwn9972KKIqj9NYpRnsMnWTk8tYxGEZ/7QI+ph3b2jnX4RA/9YU5MgTi9qY/fer
	 2ohaJupGkZZsZEMn/eL15YhqOIcHTEri2O4YU6lmkC7xubukfZUuZZMN9lQ0UYN/w3
	 3fUbhHrkjiY/XdS+/sS6QHCIEDTkHx9ZuU+wXKb19Ai1X4XdiCZeXP8gOH3T/SZSUA
	 41zOZiJrfNv0Z5HehZ0Hh7QsB0EhaEwRVKQ+C5+XTSjljvz67njGZVe1z1atV9D/KP
	 xExnsEPtGxuPjiFJy7q1qAJ7ukJ5sIpxiLwfuWD+5AIKmfKolXyphjyzFqQJVH4f4w
	 DPH1jexzYr9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BC3C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172122392277.6628.12807129325355866897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1bd2e550b30a3baf1415a9b8932d812fe76820717082008993a38d34676bc5
Date: Wed, 17 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721223922
