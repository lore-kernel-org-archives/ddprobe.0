Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4910E24C08F
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741115934; cv=none; b=R2u9rsQSvWtrvZNOyWWXN4dT2DSISgMlqxJoenHJemRwiavVF+dM7UWr7/wilp+6UkwJsj+1Zo9ILSQC8RU0qBXtMEFICBdsbjPR8+8kFrKJdEkc6cftT57lRipFUkV7+lO2rbzF1xl/9f1hp+y/tYNSWAFDBLHz1erhjW1pYCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741115934; c=relaxed/simple;
	bh=7sNyXW4yI8rTs/kbWvxj4FT3Hz9lFgvFfqCIq3pTi/M=;
	h=To:Subject:From:Message-Id:Date; b=GCwNxLVJEzCAJl/8ElZVbN8h5xajbRMt+z9D8iYo4yVmnB9Y94+kwTmUsbDWwqP3Wf2dBYn2ibKHy3uegXiVePIUHXwNu/TvP0lLtyiyqHfsNnPYfs3eMjrJylK2DJCbkmrhTZVHL0ZeUWz1CG7GDC47uWKYwm/DJ/FghcZFmkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTVBMoNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTVBMoNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DD3C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741115933;
	bh=7sNyXW4yI8rTs/kbWvxj4FT3Hz9lFgvFfqCIq3pTi/M=;
	h=To:Subject:From:Date:From;
	b=KTVBMoNzMAocVOD9hx8CMMg//sQa9E2JpmoJLARIfM12MwqKhm0Y8ZgFHxOexxbr0
	 g6JOq3sId5HQiitKpyuRfIsHIURj4k6k3dXFg77DJCS8OSDu5/XPpbwwnCg966g4eX
	 U7+zIBl7r//l+pUWPOWJQDJVjsH8PKhThtVE4DPzi8ZJVCKIogEfkqspL6URMes0Bi
	 8LDqOUgleJlvlsFmYUikrwT9XohxFc51BHMHDqeHuj/3ao/eXlL2Vb1okNCQVWpl/S
	 A7Ia493+HDuY2cvC0gMhO0xcWZRJMbEHOGE/bv4+IXXditLNNfVqhFOhOIlfVY8MOn
	 ALlfzcR3+mj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCAC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111593358.29414.4158145434325088016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804789ca999e4a66e5897fd86999358b582c1056cfcae0a2e575e07a023afd53
Date: Tue, 04 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741115933
