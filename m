Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC3124EF8B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749473994; cv=none; b=JBcS9tEc/REnec1bdXyz0RgSv4tC+OTbld+xijIAJxx9msHYHAyccPOsaiyYe6cA8+e7NDvWjxzIKAoNuapinWCwyz5m67nykfNYT3bQFlE1IgVMNL0kBtndNJBJqskoXcsyjbQ0SfqXjAPB/VxtahuWaQA3oG6vugm9py4KM9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749473994; c=relaxed/simple;
	bh=dFRJvfJblnH30hffSIcWOOyVXzYmgp4Ycnb4T3bggBo=;
	h=To:Subject:From:Message-Id:Date; b=ne01aWhBxedCBNt21p0l7uavAwvhP+O2o5RD1ZcQRAU9kFyfTEc0c23LTAAV4DC0JDT22+uvvqi2TcpMLIIJB6lPQfVpSPBkdwjMFUWJCFZZbs+sGrkif1S3HKWDOyo1/3WIJfVn0tdYZbTFuvxHWYPRx8w8nQPPq1oEAP7z5HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6DGmJNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6DGmJNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A9C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749473993;
	bh=dFRJvfJblnH30hffSIcWOOyVXzYmgp4Ycnb4T3bggBo=;
	h=To:Subject:From:Date:From;
	b=V6DGmJNEih/76tYRGhgm2t7ZUZl/AOMss2LstE50o62cEb+Lt2Cj1EE3CPUCt2qPl
	 SGMvmGbGiq9vtvJwM5VpO/C7kUPmXjaCnTGJ21BwSUFNeaQP8IlRcSJTmX7nA9fK0p
	 mk+Z2PADkgn3IjaiSeFXVz2wTMtGkjF0wyB7mVbxJmtuKKUtq6/Luc2lM0y5K7+5og
	 ycypGor7ZzGuYdWIS0B/Vz4XbfvgJAW1jg0+gRC2WbB3AtsTH8nYvnbgzP23Fuu5ac
	 qhJbyY95kVrKe2bLkERK7Hk9LQCBpOMeA8PNa4/zYzclWa+Ow+zWpW3hZD7AvsZZkZ
	 w/hpMRdnHgdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19DC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947399357.4215.14546019851320182174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d805d35c43cf8b6dacb8632554e360827a29de08e06361dad1deb0ba87ca6f38
Date: Mon, 09 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749473993
