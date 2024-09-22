Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3775A1392
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727009754; cv=none; b=NZbP5Z5kmkGRLIjAZeCcJjNYQSGBqBxL9X0/xty6j9T+wErfBfB0cW/8m/scn9yBpufMZhT3VXHmAHcZlZjMILSUTBTFp9oxAoQuZkMkvxPfxVIUzY7NqXl6uttC/e6jqk0JUZ+EDLGYWStugH6TxSe7hX2L+dhguSU2s6SvQH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727009754; c=relaxed/simple;
	bh=5GcFPDD54vDmXcxYbc9DJktKvVzx6/IyFrPqKTHw7B8=;
	h=To:Subject:From:Message-Id:Date; b=rJZIHKLfrTVbiSLFd/v8DQy7gPafSfU41mJY8HB/s8L6HN4QIRDhjp+XEg8vFXS47K38qF9yMx9M2r+8H/bfwoTDPrcH1AKepOBlwjncBJl/HFqumLgGWYvTuR2ehtfKGYo+Yr98KsOHnQFGakqwPP6SE9JrFR4r/5kPdnVB0qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILgLpTli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILgLpTli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC70CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727009753;
	bh=5GcFPDD54vDmXcxYbc9DJktKvVzx6/IyFrPqKTHw7B8=;
	h=To:Subject:From:Date:From;
	b=ILgLpTliNLMf5Qg69b4W6IPGQGZLOyhVO/6jNHD0J1aJXpG+Oxt4l8KernOmqIGCw
	 gzk+yTGYU/RTHDPtc3SfAqxELiZsqn0E9pVHm5e5rNcfmN5jMWfqSx8IE+G6Nmgs5s
	 799ZGFVn2S73rMMHCQ6S3xdVDVXlC6K8QfJaAAAPnCAY0czxrM3xAY+aizhtvkaTTd
	 eivs9LT5SiVctorUB/vUZk9ss4vAM1vt87RRVb6XCIO/n7MmMuheM8aMrFXPYSUUK4
	 +/rU04yNcmJ93Y03vr9FVRtDYwxgpF8uOpo2uvXKJaiTYnwZjg5remfqFzYPwsPGDk
	 rEnLXuCAajE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65A0CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700975360.15563.17711082660200847090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060b01d3b793af647406a4967e13618f661285531a6b54df47a4879445f8cf16
Date: Sun, 22 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727009753
