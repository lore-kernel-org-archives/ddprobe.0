Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC6B31618C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786805434; cv=none; b=cxQwaY8Bxn4ufnDtwKYYAiUqGWBBKbGzkox2AOG1WPKOeNqv9O0Nqs/ZlHWhCyOnv5T7tJe0B1Fkcy8gPdLEpiAUBYZoo6c49ReEpkvOD6DrvFFkJE6nTddSX+elrPviDT9OysxnDn78BBFwcAHpFJlUJZzDmU/ZN60mXeaafqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786805434; c=relaxed/simple;
	bh=YukUoj9quZbwB47MR5kHFP8j3ujgz/5dd+YwF4dynIA=;
	h=To:Subject:From:Message-Id:Date; b=H9daTf88v+eaKqObOUgG1aVvjP9y2jWmPZEjqWIUka197L9pdkJIYvFto+kBSH+nuvgNynAoaKx3LiasI3tvWRAYDgxMo0G0VCZ4V2qkZed8ryTUhjBsnf8wjeGxu1Wh+lLrMC+N1Ym7y6fauzXKft2Vggor32+30EvVowMjt3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwBhPAsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwBhPAsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41AFC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786805433;
	bh=YukUoj9quZbwB47MR5kHFP8j3ujgz/5dd+YwF4dynIA=;
	h=To:Subject:From:Date:From;
	b=OwBhPAsOw5GVBNgWrgpgsmR7uy1+2e0AM8BZIXjRaICvtABCGCyv5ff4XyBgBVqrr
	 N0ZWnIX+8Nk7F1OwlRwvaUG/QQzqkVOn6V5o3BT5xuBdNQ+51N7JKi7k1nGEdvdncv
	 k2cLkGEbmlGwpStMrytQpKO5DjQauFgnonVYSzgJIEnJgirTrGOAJEjW+yXqc31H+I
	 A6YkyfMwJVt3pFS+PWc8ze/imIFEpHfxnwemAqMImnN3ZfYamN8+DjMEzg0VDS8qVu
	 aAd37y0Zbo0SxFLfU0ilJQKphi3dzRrM5EIWjkVX7WtyOR8aT6H25ShypnHDZrYYu7
	 eZMZmYilN8Mjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF2C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680543368.12783.15991176233392754179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499617434a26728db3d8cf4dec0f1bf9600ee8090ab7fa4bd719fbef0bbea12
Date: Sat, 15 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786805433
