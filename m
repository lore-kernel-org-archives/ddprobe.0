Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364A02D3229
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755803994; cv=none; b=Q6kMMJD60UtCnt4ib5f8RVYifMQOxHzf+zFmilvR6sxAjiK0Ve8fkYh7mFtrVRNEv8isF6aafyrSYqT9fV5U3rFvuthOhmHX1XS7RMeppmc7NiG3Kq2ZvkfG1fzg6ShZn0Vz5AZtevSAVSzBF9o5DdGFb7p43zYM821MMi1LPjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755803994; c=relaxed/simple;
	bh=4l3coqzsIXg2ybyL97TJdCj3sxFYuqexdInDSl/aRwM=;
	h=To:Subject:From:Message-Id:Date; b=OyJ1iQU9oV+Vd61yP1gBcRLpFVh6Bj+L6BDX1wNttTXSb+cGpETj64+LgBrTLC5e6il8VDyxVZcSvghYCsYq/Oc2h872EaCPzpqb1gm5ckHzXmjKRMc9HcSGTXUZl/9eJOGkrhpPhrgER6OxA4YoMLA84CcGgBAOFzaFG2mxSRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2Xj9uyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2Xj9uyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755803993;
	bh=4l3coqzsIXg2ybyL97TJdCj3sxFYuqexdInDSl/aRwM=;
	h=To:Subject:From:Date:From;
	b=n2Xj9uyZiFtb3lUKGCNu9AGjFl42KehBXDOXBrolZAw1uRN7iNwY9bOLpx6fJx9KF
	 2LepHTQPHYauiWbsCtVxkyKeboJmfAoPohYDRtWrN5Ji9gmDx7ARyNL7PH/ojCR4Hv
	 cWUoOyqy8sgcrQ2YExDFdA4pFEX+3tf+v9Kn3rB+npPq3kMFcAj27Fa9VrmznEbBit
	 jY/GDS8WGKumba5qEIS5mt2rDjW/9Qi7Gds66v5jcW05hmJtdtn/OX+wYPoaQGOj7h
	 qsDJiSj/vqL28DtGo1jQ/PJmER7lGmyIeb/pBiNmmLx+Md2Ql/2ZtBx5scBLOqBpIr
	 QiCREkQ2m4Pqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9ACA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580399358.23426.7385074557921380739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0252489ddddb5677583feb0e1a580da5fb619668fd3968205ce4f374ddbf32
Date: Thu, 21 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755803993
