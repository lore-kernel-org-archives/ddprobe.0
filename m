Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BAB287517
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767939834; cv=none; b=EuL0yRAKdJifqz/u7RkPRyXw8RDH2zuFbIcoBzEZCk1/+TZ0UF4FSs2+I5KNujYzMWjcIsu52JbzRp/Tkv3pttXYY8f0xF66irRCaJUp/DRgqLH2yVVLEjErQjfVkyVC3oHbQqJ8/ra0vRQH5cmWtPknizacKvv6oUyUvoFH5Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767939834; c=relaxed/simple;
	bh=ZQe/c/rHhcoRLPDYLEBcw1SiV5ErmH6jLSgxBjQcdVY=;
	h=To:Subject:From:Message-Id:Date; b=X5Yn0JJdIlvZ/FxrrjaMq+82Bcw7XYRNZ+DVeDv9UWcIkrgcEBWPVc2NhMZNpEFQvVGL1lMisztFP648uWEpdqkk8/o+TrKE+5hWWx5GY9GPFOb7ZPnFnkuVqoxVCZrwqYC6hx98q3t6HjAy/zo3JONo7NsmMOVX/mUM8ytzouc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHOxJYqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHOxJYqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3226C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767939833;
	bh=ZQe/c/rHhcoRLPDYLEBcw1SiV5ErmH6jLSgxBjQcdVY=;
	h=To:Subject:From:Date:From;
	b=OHOxJYqQjdKXoik3OA6qHMkz4oGpgeQOpaYEtt7z1KGZBIR7A60AXVw5TKOujelz0
	 +WIwr6q9RV4H1UazhoJD/ExrsWQpnPoPPp6oqueRGnYnI7By+ck5as3keZRd3/Zxf9
	 Pbh88gxG5kaGx3nIxyKIciJo8+MxlD9ggXc+HyGU2+Wr4FqEgm1eUF/YOKPmzIcjYq
	 CttHu+Wc9S0ojPxAeXb1XwgS+oLvF7vaPPxSpwel2DFIlNpONo65CBVL1I6Zuo2XLo
	 NQ1M0xu+2d9ufyjuTA5kUf+hH0whHQXWMP28GW9j0p1SJopvnDzGP7aj+8IshupyQC
	 otZj5FAv/j4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917ACD232E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793983358.19828.16485572181242616398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c85192d612002477b825a0898665a9a002ac4f12380ade5b872b9b941f5b47
Date: Fri, 09 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767939833
