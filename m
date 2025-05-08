Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E2D84D02
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746666594; cv=none; b=DcrXDvoLdaYiX74c8zS/f5vvUofkCL/z4kw8WWIbByjCnJdv5aDiJM+h0670PBqm1V2ZXTZDYtthMY3rrG6eJmOWGIX9B3Z4c7sY5My2b3qREX3YyqtUPEpXxKZNuM+DTzzJF9w9Wwomha55h0oZ+rdaudZgjMGDVb3qnXb5fkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746666594; c=relaxed/simple;
	bh=qhRQKlqrDXjEf3yJFUEbB67WPV0vsl7ExBc2S9Muo8s=;
	h=To:Subject:From:Message-Id:Date; b=a/oeqxhJwHjAjQZTChEE0Jghm6GVHHHDETo9IJzhqT5At01RirN0+4fBe/GuyJOrWJUupHtDjSdRPkc7/TnzZhLAZ5cw6SwmnfvTdP/Ouc8XYRc9YovcQH7bZ9gxPQTo8AvEponQs8XRK6zH5fyyPtpfF6csnPh+gSSfIE0aIHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYMsXXHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYMsXXHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C8C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746666593;
	bh=qhRQKlqrDXjEf3yJFUEbB67WPV0vsl7ExBc2S9Muo8s=;
	h=To:Subject:From:Date:From;
	b=KYMsXXHZNrDCghH4x/Cdc3lsCuIal5+3Kor2ru5ulNdy6Rz71o5VuOmQQYEWme4Gf
	 XcXq4B0d1f4WFD9j1+Ieblo4fn0aXgq3SB+ty3lZTj+l7QuDBiy3GI0pjzB5IrzVy3
	 irWHWF3mQ8HkQudPS0/nzXoYR6a05bvU0EiXaN83YpW2A47wluXHekPj2Jm5+XV+iE
	 ZxASRtwlPHAFnu2a2ElZAK8KhZHuyQHBhH6UsopTRo94X+IxbZNlT8Fya7BycanAMa
	 Dyt61bgSKwx69vP5baj+fs4Tb1Hiabo2TyCywwcqixEUIYzeCipJ+jM9EE6wAzy8o7
	 w+aXj5e97U1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90709C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666659357.13324.9198595625891263856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfd2a955c870e6e0afa9e357038117762fdffb7e19971fc541e61d15175e0bf
Date: Thu, 08 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746666593
