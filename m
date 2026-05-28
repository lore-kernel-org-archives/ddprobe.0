Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256283009E2
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779990154; cv=none; b=WYSacO4mGQ8FPFYANRZmVNkTh1eawLK/FovqzBdmT2THE7GT+V9GLEOPPJl7NcqGMVcOFDmlqp50x23IYl+etkdjNi8AuqE9gmKJzVwRJ+d7XHWpT43q6eR7mV2K8vznIr5hFvn4x4+Prxj/6AKS0xTksEp1qbzbzP3vu6RTV1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779990154; c=relaxed/simple;
	bh=/JlCbTX0bw3rNu3WvlpFUTb5ulrDSeUy3xE7fA8tzFs=;
	h=To:Subject:From:Message-Id:Date; b=mO5d2UrYat03UAeG563c9uW7Im+hsH6NoitDtECuGrxQ/loWhQzPVrhltwSUX1Bcl3vCuCojC9xSlhY2YwWzJ3HPTHiw6zrPE8kV/6z3xY0+damKg/Ork2lU4Y5GrNvLam6UOqijoaOJ8PNN9QIGEzK0gEkjf1Ugb2RFje/+A6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSfupUQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSfupUQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C398BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779990153;
	bh=/JlCbTX0bw3rNu3WvlpFUTb5ulrDSeUy3xE7fA8tzFs=;
	h=To:Subject:From:Date:From;
	b=BSfupUQYq2o/cWvhOdwH8uu9ADBDZXwANutG9oXDDED/rvzeyj31PnTHkYQ1nwF0x
	 Vdpd4XgGN9zM3sAwXLw7AusyDU4EDQ8SqSc+z1Y4dkE/9Heq7O0zymBdyp7xP1KbXo
	 Z8Xoyxwb+OeQMAr5/owQl7+KdfWkce9sULEKLoavGA9uB/j4KO+uRbgLu386nIqT4Z
	 S78K6hFz7HVVM71R9NCMdKoO35ZcVPPgiyyXw/BLLo+F79HOTFgW7eXg2QqbvSEyYp
	 FQH7CclrchrhRKUh9XQoE63bJVSXX9acBZGEFCiY3ptvV39mIGj4xS5jFdS2nk7CfB
	 M9FiAcJEdxL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F9FCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999015368.22049.7479925397382098882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fef1631e768ada09aaae0c37ce9ea477fdb5c8be05d08cafa49e655bd9750e
Date: Thu, 28 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779990153
