Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3072D34F46D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776717454; cv=none; b=TfQ8LmQF0X3GsS+AykTPk6pbCS1bczOOAio+H1ZxLSkZ1XRr9+dDfmgBCTE/i87xXKh8dtJQR0I1t8xaMik73rFcU463LNpyriTyzn8E1WTuSw+IEGYr5NVkRkx9ouP3tlha1Ppyf80Z1bBi3MUtYIlvWxyoyJz1+c4wSw4P0jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776717454; c=relaxed/simple;
	bh=DywIk9Poq7N0cIBOg8hh/XYBtOIvjiqWTtH0O/KqAqQ=;
	h=To:Subject:From:Message-Id:Date; b=ucTvKTVEwKCeSg8l4zxOAHbZJ+Kp1jDtqJ5QpbaLV4uwrepa3S/dwyjLIP3PTUsYZ+HkI1pjJ3DexY+8BOna7Of8Q+hdQ7K6V62RC50xDBF+DucwD+CG7oXFpxAoM1wU6dsOwZaN+kv6M2VwctvlVtkjOjIMTRvdJZ/Ok2iuAFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew0WmWP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew0WmWP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E5C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776717453;
	bh=DywIk9Poq7N0cIBOg8hh/XYBtOIvjiqWTtH0O/KqAqQ=;
	h=To:Subject:From:Date:From;
	b=Ew0WmWP/Ust+hLUzFY7O7MN3QWR4JQIsnU1naVEey7MgA4Ge01QPpex7nEF/nDkil
	 ywV1WFbGlh39eQ/z+ALGFZRvnu5tJCe3cH9cmpAzaZfMNX5DJOP3sRn+exItzd47Qw
	 vHNPmnF7PmUZCboX+XAk+9SprET94N85aqIVD6eKaONFoGAXzjAAsg8jZEkwVI2sti
	 eov0VjxexIrsGXUb592A+Vs0L9jLTUThByrH9j3JANdsHK50HZThk4FHSj99IyHSQ1
	 1EvrlTu0413etsnc/Cj3MujaUzssqz6WYsXdtYSwoKkViKvaerM3+aM06Iq8dv7xOY
	 b9JDbex9rjscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7AF5A8B8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671745368.2271.17613489245144667815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bd065e3f09a9f4c4a675d814819a8311050d8c7bc360e147551541826b3cd0
Date: Mon, 20 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776717453
