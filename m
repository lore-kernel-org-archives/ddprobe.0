Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5B1281503
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778350055; cv=none; b=fgLqgS78IebBNedQbOl4hZt2DdWWcQQwO6TAUExFOTaYsRysI42+921DltcWtA4Rv17T5siav/JgcmQKFeY4c3QVOBnqGmBVeCxgqGbWgkvkDJ7RnrL96ChyWHElzZiD6SAj6vql6leGqyVr/FIzLE3yY1dvxzjibCYm131fpR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778350055; c=relaxed/simple;
	bh=8hvyMYZ9EcNPwFqgKZ4ROm0UKZ1Hj1nv/HcgjBE7FmA=;
	h=To:Subject:From:Message-Id:Date; b=aQCRCkiWXvcZ2ahNuAxlB7ORZqyHFxvtYRzDknjX8M5+t0Yg4RhEOfAPP1kitcOUtl2YnC9XeD4dKfUhr65qvgDJp+bDzzh1lFP6y9OOFXjdJdqoAFWo1tE8d61IsQG0oi2JnmV5Ak3EKu+rY0aU6S9q0LepYLWd4eEZVrfWwsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXUaIga6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXUaIga6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FF9CC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778350055;
	bh=8hvyMYZ9EcNPwFqgKZ4ROm0UKZ1Hj1nv/HcgjBE7FmA=;
	h=To:Subject:From:Date:From;
	b=VXUaIga6x7su3rWCK7alTAxg+a1H1AvI2deqTXTQI7TeXC5Q2yX1j5j7vq6ZAa3aB
	 1G/OuYCnAu1xJIn8pX6P76V4Hfxksq1zpV7+IVLnSYR7+47EQWIptnQiEFV7hQLrGl
	 xb84nY5QpEmkURF1KPOz4tmAJinNf67U/W+/lOS+GfCrp6yYwgehzjvVC/8dZm0io2
	 WL+QEKwV/WEgKeUostIfS5eeDspWkAvZC2g/guIe+Cy6DrPONxnKt/lrjjahut3Y8H
	 966aeEe/I7WbptvMJfJW6gVMdzhOv5guNr8jA+W6QLk3duk4j0jgpKnTkqChMst2al
	 YpwYc83jeVEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F03AFCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835005382.30377.2015755924300912394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0140bbd35646c36b1c413c5c669e09ed14f5b758787bbfc10f72d7f3776ae2
Date: Sat, 09 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778350053
