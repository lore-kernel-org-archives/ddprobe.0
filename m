Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7B1F956
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752949795; cv=none; b=bQqqFTJ5iUtrMcAQjlwjEgd8QA3XZ0FXCLIieTBoHxKqawTiPHPbIqwtxOa4DNDyxe3nQMNVA0H1yUKz/8GGQIn4BgzGt5IsBzZJe+nUE31hQMaEB8/9SYLab3/a6DB6VEaqqBR/dilJSV+wMDsMOqzi7hUCxPyOLa73J2pKPTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752949795; c=relaxed/simple;
	bh=xfr0zsAcueMiUda0FojhDXx5Pg7v6Jy4nBktFEdBBME=;
	h=To:Subject:From:Message-Id:Date; b=i+93JoAZJhhAFvdj+MdUC0/ME4GHjoUqz0DgIJ7OI6FCZOKXsi0CNaNQ8NeB/AwphT8qwd4yHiQRanB6Fr+zhHJhyHGpxgd4Sz2elzQCLOeF1w4LvoI75oyZFW6nKGh1dGB08VaBBFzqWWrjyQ6ZMzrK8xdqIojy4cKDOON5c2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGr8NlQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGr8NlQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2725C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752949793;
	bh=xfr0zsAcueMiUda0FojhDXx5Pg7v6Jy4nBktFEdBBME=;
	h=To:Subject:From:Date:From;
	b=DGr8NlQHslAqKFLKSD8BBi3cVV/PdSW04dfRZLTVqRnd5KZRcxlqnXOzbh3wYjeSF
	 Z2mgYRiiSe0sZlRxg4xvysk7jBK1XylenTqNroc+vZk00ANui/brFeoqdHN/T1VP7E
	 W7hMcAZ+tc2LVMtet12ThB9YGU5jqt25SLiJj9MpUqO9eolTZpP7z+LMLCAydfCdxg
	 bi+WnNUsXuoL7//foQl0FA9uFtZs1m3APc9GrWte6JKGGMMKaNhgtiQ1O9K5xfVCLb
	 PV6u6BkWujTW23T8zq1JXv34RzANlEs0T25O8SJwDqZCeTwoKLN6B/O0qjvJQmtmwI
	 OsT+MVt1ywdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087CC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294979358.31999.16991775305599466658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd2a9e476c3cc85dec8a2f2c3d9a14066a9653f4f2d8d5cdba474e437579989
Date: Sat, 19 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752949793
