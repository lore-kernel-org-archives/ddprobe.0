Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AF41DDD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147943; cv=none; b=k9K0KoQxE0Fl79eu8O4/de2uWRjOfBfHs3Z/AKOWBk4p7d2p4WNq0nbCxyH8GUQGQ3Y9Bd8LcbteEIcbwTW/u+JhAIT3D0LDZ876HsNRXvF7esNvSplm0ETXFqZhZJjCc9Jf4unLjfmi2WW5G9VdMFtEpOJuVl6DXoXeWCOTK98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147943; c=relaxed/simple;
	bh=8BYkrpmijhhmvPGq+6vkMsTVnfdxpTepmeYsC81leP8=;
	h=To:Subject:From:Message-Id:Date; b=oy/A4iKf3X/c+itBTIPPgBS8yNRxh5u0S0P7S14nO8+QYnoq3INUFUWSLKrNuHPsoE6YJYCB8/2wIGuvCR5jjvO4mtwu2SJMWqyrcb6PmLN7myT+1hAJIo0FzzqB2tAxyEQFs1pG+lGEInObSxHbUneHzij729KqbHL5xy71wOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc4wvRNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc4wvRNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4C3C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714147942;
	bh=8BYkrpmijhhmvPGq+6vkMsTVnfdxpTepmeYsC81leP8=;
	h=To:Subject:From:Date:From;
	b=pc4wvRNpK8+mVVLn6o5S/0PlB6rB2LNHrtwx+seO6fCsi40wQNb9haA7mD1mLOiSN
	 qF/8I2hJBKkbJOa/PO25blleBVkKKqNQi3cMvvq42+AdvYjRlwtDUtgLq0mJ7uIXOF
	 Nhq0eanji4ghguVF9BIzlX3afCUXjAbc8uJiIyo7mLCiBArwWKqcThSrPzf6Ltpbg3
	 jOmX71XjhIRn8YXYkOiqijJ1BRQeEVqXuJhXW49Y4rNGB/B9CrKO9n3su3NppkgPY1
	 4x6Ecm+2znVSRvJ+6osJYcnUoTqmeGob4EKfsaTi7SyiDFc/7PbzYkz3uGX/NtP1ys
	 hOhStOxMkNjrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA46AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414794281.16218.4570927874761943129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b316237e0cb76807c8d269cbdb3ad65183dc861502fc5c094da3718c75c375
Date: Fri, 26 Apr 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714147942
