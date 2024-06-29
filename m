Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCEC1E4AF
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719683663; cv=none; b=awfSZwbEvS1Wdch+y1vhWfOy4F4Ke5dcu8K2zkgzaiMQckGnyN5BgkYefEDdE2vo7oZY+NsRMSoIJa/bCu8wtvZUQcPDXE7sZEyyICi+Vd165D4gjtHberqEBjXzcNdEFOsv5xY4b272qgSODQklcljE2rXWkJccDlo0GrRBbls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719683663; c=relaxed/simple;
	bh=9beVymsjT+vfX2nzD+oxcWNKveDCBT9t0/ac4U4W8LM=;
	h=To:Subject:From:Message-Id:Date; b=i+9I4s3TnVybTzt32NZj7cx4uIY5nfq3AGC3SairE+N9rPHmEqsqxsfq+G+PI0L/ewbb6ytlaYKGVkkeocz2F1tIYJrk2g9A2htZOfYwoBg21S4LuRnXrhMWYIubwQAQfif+OZ1alQv8kIgWVfgJq+tezR00MepI0dMbmlp/0fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTF9hOWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTF9hOWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFCDC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683662;
	bh=9beVymsjT+vfX2nzD+oxcWNKveDCBT9t0/ac4U4W8LM=;
	h=To:Subject:From:Date:From;
	b=oTF9hOWdHTq5zju7Ibwd4O4RgBJ4rCivhXLqOGAsRiuIZOBfwgBSqWuHiPguOqc7x
	 1huW3JL1SGx2mzEjnfdc2Vb4R74bG92jvQAIGcEqfDl86Wz3nOHQ5WEeUa0ZOcBWQS
	 eBszlHsq3t9N7r/lZPSXsZsgAzSoNjST7FFnrE4X5o7z8iT1IPKCvANNiMnk+ycxkB
	 FOCLya01yv4RC/3jp0ng6Bi3rfPtO+JxVJlB4ZtE5/8cxflwyh0oGbn5JQWE6rGca6
	 lVGfzM6Nc7DsE1bfTqo4vJzXAiPLIWk09qPdvvnO1bq6y9PT9HItwdEdXvORSQNtPG
	 ndFJP9G8p/2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADDDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968366275.31637.14175796804835244019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9397278be4dc4a3ae3de09c59ae5d6b7dab2d533b7e53c05ef102709400406a2
Date: Sat, 29 Jun 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719683662
