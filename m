Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279F8158535
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776666454; cv=none; b=ePYVNZjBApw8BdRhlj9gHmMbtXQYzkDS1SHmbXw2EJsQsbKAFJZ2WdJD/vcQo9eAR/6N95cDQMV8mZkwDlq8JJZcpHbPffq7oQbMXOoEZsvc+gf6DOECXy+EENMVihB3uF1KN+H4jBX/g5I+5jjShnJ264VJUwmgsKGEaeIxO2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776666454; c=relaxed/simple;
	bh=pO5J+rYF7cMDsnSgjdPAg0VEzVCB0zecr/YeVtchYv8=;
	h=To:Subject:From:Message-Id:Date; b=CbLfVyRCubACW/K3gmuaZlcIriSxWSBJqW3riPAXhtwm3A3WE9p+QNzefT76Gw4DmWE+JfTq0bJfMba591YXVVLorl6InhKY8HFsHS/gWbAgSI6jO34Q8e3wqxN48HviO8JwDuDjKvFZ3BmQTEBwjswuFlweIESsDlG3aqEAYis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jac/Qb7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jac/Qb7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFE5C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776666453;
	bh=pO5J+rYF7cMDsnSgjdPAg0VEzVCB0zecr/YeVtchYv8=;
	h=To:Subject:From:Date:From;
	b=Jac/Qb7kMyMWYj5HyDi9+c+3HbuapndBrowkHQWdBslmlMt3e4KXdH6r7AccbhEEc
	 dwoPB2wdVxEA8Xa3J5DBoCZ3ErEfi4bIlpnQTtanbKKa1k5oi1KT/ghERQQQ0foGUW
	 fGcyRroraDXPz8jCLSC21IgMdnVMROl6oh83gIANxwqhVamCre2fyye33yIU+ZLUkQ
	 3E1HVCMr/slJVbrKxZ9JQivDoDXlGz0fwEwgaGmVKWM+9YNixkzvTCjJyYBZYxesGO
	 jKSb8Sn3FQy/JyiTHY4AUkaFQ7w4uUs5eN/0P0yLThvRQZGPqKYz1ygqKMKiG1DLUn
	 V/agLbd8ziXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E5F36C20
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666645368.27195.3869866183516678873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c770d3a1e69f7342187204c67cce0ce9960bf896baaaef00413159f75c0832f
Date: Mon, 20 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776666453
