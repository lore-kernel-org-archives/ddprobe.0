Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8B52F3C3E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784406514; cv=none; b=VL7vuzB1eBCLeSJbzHkwF7nhGQ38OzEdpaDeEiizFf8hRIILikby+Ab42qy4fJpRwZNZSmSzj6YX2F5yWkIvNvZp4GIi16JzOGrMSXFXHUWYIEKlK2ktBhd8W3aMVViyWBcdncMKhB8MwRl5vhxf6UiOx8H3jWZVMDK07TKY/jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784406514; c=relaxed/simple;
	bh=plMtT+B+fPf3AOkIamG4kwKVSI73Kf2xLKZI739FBEo=;
	h=To:Subject:From:Message-Id:Date; b=Vy0VEwR14TUUOpQoTMIVZYiwKge4fP5w4YzqBt1cHkcgUWVQkDSRXtGhQogoUK8yRJ5w2WSxm42xyKuH72Ep51MqNfAM+GBlg6wmTciQ6v+DtP59TuznxW0fPFEvMhK/BMvJkPbpBt6M/Xcwylu72Gb2s13ZV/C2O3aI7uc8P8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rhia11B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rhia11B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0D0C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784406513;
	bh=plMtT+B+fPf3AOkIamG4kwKVSI73Kf2xLKZI739FBEo=;
	h=To:Subject:From:Date:From;
	b=Rhia11B5nSawYp+1ikI9TaOECVPg8SV1oIeZuF+R6WvrXmW7lKCmvAPSruhp35kJQ
	 bexo4WBmvC1pqP+xwQkkVWTMouUfVbyx0qOGODAIKGt9DOeIG/Ckiwu/Unti1L56y0
	 /LQLGZh8Ll5HF7PQGmEAjzWJcxITp9e2HwGuAo1mPQBeldHlfJVknMS9tppCYIuNub
	 fIcPawazSnDFKqpM3P+phxVIGSko4YQsgtltMUYsT5KJpDmipVLNjlrjk9VwR+pFLK
	 nDm7W7nSWmV0p9PJp46AW6+IQ927nnH5/YaSar0woOB/oJsIdqQpHulevmmsfYZSMu
	 lPoGDZQvCEPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC26C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440651368.26652.4596092422423310748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c9dcb9a448eb2e9d4634103328dae4aa781e642e48c8f5f54c35da725adbe7
Date: Sat, 18 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784406513
