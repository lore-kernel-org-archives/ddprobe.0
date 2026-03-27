Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167B4175A96
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774581894; cv=none; b=MrYdAAznMNCZxE5B8HsHvL0nUSz9vueVg/kTth+fC87qNTgEFpmShLijl4pHCbCYAqaDhqlNF34tPFOBWmxLV2GDRlo+zsEOpzenlG6xifC44iT/PMWDW0qOkN/bhV6dO4mYHY1E8aFHrnwlV0XQ0gI1kYT5C/ED6KaDRznZlqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774581894; c=relaxed/simple;
	bh=Ij8h/GgFUCISvmtFuQ0Drvnc+/RnMgc40zqpwF7TNUI=;
	h=To:Subject:From:Message-Id:Date; b=qnW8i+TwKMWCB0c+EYcfugxZ3q3lrYpHjnF89R8kMlsK1i6k5hLr34VB+y2OMWagbd0nzhVk3NGw4akcdU5Zf7LVohyDJHFyXHUkwa86IPEfJ41++MwRxQEBR+jx+6Aid95tPtLylTRjjBD3tu2GKW/AM3Ry49izUur+rZ+PpbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXbD9NwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXbD9NwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774581893;
	bh=Ij8h/GgFUCISvmtFuQ0Drvnc+/RnMgc40zqpwF7TNUI=;
	h=To:Subject:From:Date:From;
	b=KXbD9NwMPUc+Yl4xHyvnNyl3vVEKSiLLyhsmPLPQjUA7GTHjsmImLdN+4C+Q8wbxk
	 kIhWTb0y4Yb7octQTHkjaC30KSELX6us2VG9SInEJMTqgF+ZRUO1+QkPK4vheQqQig
	 BYPdsZgBOiOJMLu0dxKcNd9RPfTrU1LzCF2SLe3aaAdYl682lmpA+Vl92DF9zDmmn/
	 aWZtGGKem8qRyx4SOgxQwmBui3OUOS8i6cPACtLAOd1ApAHkw8xfRh3JYO+4ajcepB
	 OT0DGd5eEokcuEf7fQe5XboNB6Ng+wchozL+wy+/zzStSybmOmoTKwo1c2GRaSt3fw
	 fsiiB+sAS+fKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB910BA421
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458189358.10594.13357312429673485679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b223a113b7bb386bbbec20ba56d4c0a0c2a830e72c3ac7fb0025ed9f1586d521
Date: Fri, 27 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774581893
