Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE162E7185
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776932854; cv=none; b=ILdXy1uIZ6D9JeMjQLrlE02xQjsHzIiUIWeRB7H9AXto6kG5DyzOf+3IFC1yXLraLf03CdXF0gD8dousPNN/F+EW6PpompqJKs/neXg8W0UtRkIOtbzf1M9PpW+ZCBkxwkvN/AhkwjQqXOzOUdo4aBP3KwPMx1DFbXCDtw5rUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776932854; c=relaxed/simple;
	bh=JY8kqmHn/+Wb52p2zTosC6xzYrfgp0EpPG5nxfM16lY=;
	h=To:Subject:From:Message-Id:Date; b=fKRzJlSPATLQtG0+snMJzhwJqnTKwbW56X5OtjdZN/uiEkb7DAPxQIaHyntGfTZ+CoZpKF0LJ9jKSLBtGsK93hYVfKnXjJWMzw4huHA00ogLQ8Y6ijZ+TmS+1f5LO51m4v0s7an5Y9VJ3v+pM/CjYJ2xztXCTRzmk66spHFltgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm3ZayEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm3ZayEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC1EC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776932853;
	bh=JY8kqmHn/+Wb52p2zTosC6xzYrfgp0EpPG5nxfM16lY=;
	h=To:Subject:From:Date:From;
	b=Vm3ZayEIlpkpvG10ucgdp0l0KVO3fWrE9jmvPSsbWha9tvMeiy+U4p/froOEAVW+f
	 cw6N0TQIX6JmaQyyPFhkLHEw/LWHKj1Fl5t1N3rIFqNJBEzD+tYmA/YqlNDGjcfTvJ
	 CiT/HyHYgWICCplXkZH9VKh71NAj7qoIHhmJ1WQ8MH1BR8UCp9z5k+PPgpye1bhS8C
	 IYxE4Kz1mMTKnqbkoGo4M9hPjL1Uzw2yo1Iin5guFV2R2KctQBA0GaDfoYxm0hDQ5J
	 0Df3E3hNN4WrfAZp6WnejHbu8QvEnbNDr5Ay/nZSk08uxfXsQ3QwkqqdKUiKmMhVxj
	 th4QxTT9L4CAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA68F99344
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693285368.17739.1339175487004143766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9c7f5707a04d019419a2aee941e07557a3e57d1e5ed73d3e4bdb263d8a2251
Date: Thu, 23 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776932853
