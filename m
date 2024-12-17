Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360BC1DED74
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734425754; cv=none; b=tX9279YlF2tHiUZYBYWE9O/XZvHnZ+WrbcF1sXuGG7e32Y8wyWz+mlXzl6vVl67Fpb1qnohs8YjBradjAec2hlbzEoMSNv7RV0YNI0jc8v55aWBq2ZI5yxg0/DnHOZbCeXAPyUSKPrbYmESu+5d6t+PF1IZA4huXTzz2CUVfpZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734425754; c=relaxed/simple;
	bh=EK5DDmKTcTJfFIhUdAhKz2fTda5vxcJPivCQV0lzQUw=;
	h=To:Subject:From:Message-Id:Date; b=LJcGeSsuYwKDz97frA+Di5D9eh6d2yAfyxGI3AFNfUiYeotNq5ZCYi99d0IOvI9FkK24vzL9r4KSnHOFE6AR6+nX6wV9NIdbWakS4LGfM7xCEdXKGyxUJ5Q+/daZU3eG5d0epW/V2j1XCc2X/rAlfves5ryvhE8cwpI2e+l3KS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phaLaAI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phaLaAI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDD3C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734425753;
	bh=EK5DDmKTcTJfFIhUdAhKz2fTda5vxcJPivCQV0lzQUw=;
	h=To:Subject:From:Date:From;
	b=phaLaAI5JlSMQJawKJqKz4F9gjRlDc+BDQSiT508vIb8AxiBk83FhSFOofV2dPAHb
	 g8Ub4kwO/weQaUwOFxbPMPuaT/91sItJ64/6ZFIVopDpcS+O0A1hVpGemcpnzux8JL
	 eF7Ind/v0OjxlYA6y6SlBxuO8h+a70cGQWlf6YMEDqjx0wp7V/zFLO1frQnAyjUFbk
	 NKQ6rrDeceX5ksqloEHMuhnJTbIk1R0bR3KmFlaolzn9cLmwag0lNB6RQqngp0cGZJ
	 ZwLy1WFH3ZygIxZAqeXBJI5lbC8sJFSpBN8JXqHJ8VSQkJDWl+zcZgCsO3ST2Wr4IW
	 OhA3xnU9dSOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB96E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442575363.9520.6369205084413433157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298a853b0e0977dbe6ed228f927183206bb227127bd5fbc91752642b3a177b28
Date: Tue, 17 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734425753
