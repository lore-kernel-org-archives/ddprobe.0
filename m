Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CE4330B0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768880034; cv=none; b=cUTU5JExz4zJ97fIW2g1thk06qW7Ct7crd0JASNuKp6135okBAVnGFHSAggG5fyaiYSz/idSjN4QlqCS9/e4jy4Cz7sbnDt5bzotGvFuvykPOdPq12SiYNhhZKnFajPFQIhFtDpna8/FrrqIt7CLJ3diDtKQt4aD+96JBWXjOQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768880034; c=relaxed/simple;
	bh=uoEy1mdd/GzP3GzF8u3JFm9h0AO/PVV+rK8j7OkLEE8=;
	h=To:Subject:From:Message-Id:Date; b=ke9f0sNN/0bX5njBqukuOm/YjqJ/S/7Og2yWW8jNUjBQLJESjd2EeqFnUmmKuFHVkuSXAQzKd8FCbiRkODjG1d7O+7Ltvz2hOl2HK8lgdQJp8+998S/QReZr9EpOKZ0VE0NkDMK2JrI8JrNsVmaD+h83CjSjXz/kshriRMJz+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1lXJIov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1lXJIov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D9C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768880033;
	bh=uoEy1mdd/GzP3GzF8u3JFm9h0AO/PVV+rK8j7OkLEE8=;
	h=To:Subject:From:Date:From;
	b=B1lXJIovHk3WW4B0qIfNCFb7dZh7liblr74frZEqdwD4VekQ9NiGBSvXJX+i5rLTZ
	 LK52Sfad6k/kiNcdJizvcDnKI4vE3wjMPmKk8WCv81srl7NlnVhK9CTRc2+98jAkzl
	 Eg4cB1pkQcaexXqFnLnCpb83jo55YTWKobGt6zcqWjl4C0DpponWPzXkB9w2Cp1GYH
	 gtRhWqCaBApDweDoNlFHVIxaJbDeyEUSlPD15QLYQKlrxdSRFWUHUwLfbSbhvvpVYr
	 Qp42ogoxMj+bDBhh+bB6aylT18R/rp6YW8gpEMZsih7GuNJo7c+M1iUHYV+gFxmATp
	 VVd0L6VV6s6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089AD2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888003358.4238.9155701229590867324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18742ad3f06d308746b475740f0a1de9edf184419505db2e2c7be0363173f42
Date: Tue, 20 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768880033
