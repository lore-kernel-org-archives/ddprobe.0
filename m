Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE772FC876
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778443234; cv=none; b=JzeRArE4vmT4vqelQULldUXCT/m5j3QwtJls8glCiist7Ollvsc1UrvJhlZjPnEi0VGXIEmN3zNHzTfkgUOdDkEqG/cJVzlMgWoKavTyOHJChUqnjhoZljy/gkq1k1W8Larja3jTvgYtTqAssMvEc5iSEX4O0tFmqtvO4EetzHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778443234; c=relaxed/simple;
	bh=vJOtGuXUxfXxNUc7QIWvk3/c14gBYCRiGTrEiN6pvWE=;
	h=To:Subject:From:Message-Id:Date; b=nhTRpCErzkqH0YALeM+UXV+P/wSKC/jHrAjdlKdGRkbvSMwvzBITc6oT3LFEB2WSZ4Ig/y02uFbwTjMy6UeZ27rE2KXdaA1hui5hpw+ShM8OnFyz0giUEaifaqS9R1MdfBPysV5PA+Wl5ceARcbrn5+J+XoPcOLdQINH/OYOpzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvqN1ohZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvqN1ohZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AB5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778443233;
	bh=vJOtGuXUxfXxNUc7QIWvk3/c14gBYCRiGTrEiN6pvWE=;
	h=To:Subject:From:Date:From;
	b=UvqN1ohZ+K4kHcXMmE6iWioSgWarf/qI2iJkhj8FERqQBBWs9NzKuJRRsRsYdPVKh
	 GvOhWKuywu/nGPIZUWThRyr5Zb1mmQgDsYVwuDmdMGGNNiojXG/lJMNmoQ8XeJ2aC3
	 JU7SXl+NM00s/tFkePQWy8d4wm86kjZTfSeGOFnP/rfodaISxUj4t6CAxfYdLpWWa5
	 kfb/rrT/uKY3AcX8/kcjhiSy4Ru9C4sG3sDErRB64TabwHaswYEPPCtThTFJTF8WeM
	 YR9oOqzsnNeFMOQMGtXF5T1C/X5SPtTpdxLALyCULED55dmWmBAWMKIYCR42wGEbIo
	 FLc81hVrQCcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE742CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844323369.15441.421368328291043168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad2166642e327b7754f797d50eb4d3c17ebc9e30dd511ab2183a04145d6c963
Date: Sun, 10 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778443233
