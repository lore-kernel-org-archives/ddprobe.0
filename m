Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8BC267B8D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744108196; cv=none; b=n8WgulJFckBE416U5amDDTAYRls6mdQeqcnR68TvCkjdPqzG4CLgbRnTZJV1zU0UnUolYIetnwu6VtGhu0FwrJCSyU/r+YtuZk+4i6BIuW31+AFqyPa3rN70z6DmbmSze5HrFVkxg28lTtK2hNU0wtYnwhmW4kW8Gu5G1i9kp0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744108196; c=relaxed/simple;
	bh=Gk+o+zdeY0JatcxpuhJQ+mmG2zT1LkfgoJqn87zflDk=;
	h=To:Subject:From:Message-Id:Date; b=j8356kAJ6G9LieuJljagEaKuJZB/xob2nkD+XsiT8qXus1phQxbAsLz3lwdrDnxOdOtEFlAUKhlt75XSm6SPvBi9ey/RHJzzqxJit9B/3SuKEZazpJB2zZpNPUKvZ1LEfc+2rYvCAnz4V8W+C6JkaSYSZSrjmfrZwEQlUVYrU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGJ48BSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGJ48BSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C14C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744108193;
	bh=Gk+o+zdeY0JatcxpuhJQ+mmG2zT1LkfgoJqn87zflDk=;
	h=To:Subject:From:Date:From;
	b=ZGJ48BSmBE+v8myCrEEAa4/hZ7+fIgEbjnZdaYHPcZU0bDWALwd98NIAD27m+Y0zu
	 /N6QbEeqXjtxPJGRdEt2dfRkgND2N6oes1zQ1r5K/+YcTBvRmCx69HcpAOtD8MdXM9
	 BetIToCbWuMt2l4MtHpPDZCNgCMqObKz6dFo7E+xcJekAW4qLEY/0L5RjHJkRjCjCs
	 of6ZS1sIkBXUwo+oZp3BIdpjVh7HMQNOL1rBQmdH1xnhjT63OFFFb6VNRSNjQvBD5w
	 58iy0o4qvST1I5k1S1VIXeewX6Q1EiQKTfmO3uU616/uca2VIieb86QV8InMcb9nfx
	 qhAZuKsm5otIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C4C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410819360.32018.5790570941516576286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21d65e85716fd93ae91733f1e0767a37a88dfbd519cdd2201a58731856710fc
Date: Tue, 08 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744108193
