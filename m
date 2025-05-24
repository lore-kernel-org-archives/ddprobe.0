Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E3F2DCC06
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748122794; cv=none; b=RWJZveqFEzsJztpJVhiZ7S5RYWM2x5hMvMQ+YmVQkJbnoOrchGAjNtpEFYtEfeJ8z+r7wXzJc6JXY7Oywy/1KSel24H4jJky4LIPuegg5Q0bK+aUnK+6PuaoaXmDC8MpJJDUmxX/CcGrT2EklyHH7dxwPIytypggE6OkxiJLEgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748122794; c=relaxed/simple;
	bh=/zJJq2Pj+gox/LVpg2AEsyEWwPqfjEdJzRjjAljsCjk=;
	h=To:Subject:From:Message-Id:Date; b=J5kn8/CE3IgQ6zfnXKGcFqc1KyQUUkpfMU/q6ppiODiP+9myqaWUNoPtXZpZaGhdLuDxiKmaSdP7kARKlAYYGO5pvHIxLJCAj9zAIqyLIuvfuNJK50zIISSRzCaKjAPp1/+AvZ91Z83Bys/WiRMXHbHWJ5LDwn0R8WEo5Z0Ql0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSPgwZ9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSPgwZ9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748122793;
	bh=/zJJq2Pj+gox/LVpg2AEsyEWwPqfjEdJzRjjAljsCjk=;
	h=To:Subject:From:Date:From;
	b=FSPgwZ9Wx5zVctY1TQiKKJ7xNWBu7XPIVkuJpA7EHSAW9vQap6DYDTjuR9lpMRbpH
	 5pcgfahd4NWi13RYUtuo4kVAOEg+fyy1krp5joYLz6vesKJ9yq7pN+jafkvTkx29xl
	 A/KE/bbAa5g/PeZH5aShpDyMixV2JirV6dYcyKH+q+lpP3Ni9raWp3HqEaaW7Cjuqz
	 JcAlrSDUHi7pOhGpVZ7kc/C6Q8TfgtdWn2oX7jISFEdamu8P0kJapU7Hkal2bu4Phm
	 d11cIwhkN74mHpsw39Ah6ou6mbFCcZ8k4v2T1wzL279f/9Buw/HpMYbIm0nVsbVtDJ
	 pgPOGb1PY6+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90092C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812279358.32743.13151255489526339022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91202b753509a4bc95ed2a41c9daea7636b0901d6a09b3f61c544a34bb7465ab
Date: Sat, 24 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748122793
