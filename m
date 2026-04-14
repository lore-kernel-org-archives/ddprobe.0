Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010801DED63
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776199654; cv=none; b=BoEVybjHSxeOiIlhIuvLI0QXauOXbpYEILoMcUFbdIDGFY/tpGpPp/U7XJ8+csdUEvq7jtFZ+dYmXZL6iBChB664O5fJNHH8yb+CAXY0hDdeOWgQiXECmrhs1hQY+p8Y1v0yz6aFopJvEJ3oxX1yA2aIfzgIuLA37/Y3RADHdAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776199654; c=relaxed/simple;
	bh=oJ4Pg0AQpdb3iti6gFypsY3nRV/D8mtK3cYAVHWrtbQ=;
	h=To:Subject:From:Message-Id:Date; b=VUNFyC7z/Nm7uckHmh++Qs71E03kxhpwjRtpGw8u84f5C0W7vfUdAdQEptK4BnnX383EtQQWgGvPS6Jv01Au+9o+hFjON0TM4BnQAtp0/G4+QCm6JK6zbyBSWS6n256azJSNaZJYDyTHw9jA5XiSO5+TxadToGYgIIZXFHVvwPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGK77Zai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGK77Zai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E94C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776199653;
	bh=oJ4Pg0AQpdb3iti6gFypsY3nRV/D8mtK3cYAVHWrtbQ=;
	h=To:Subject:From:Date:From;
	b=oGK77Zaip3uBQ8cCp9NWUu82qHSGxVh+BtrKSti3VqxjdTVC3C1ZO38DHzUmvW7vp
	 peBi0W85HtKfpWa3fCTws83AUjF//sxgpWkDMNWZpb9dM1aVlpduacp7CKPIdx8Ddr
	 X+QpQwk89FoweTzWjuzZnyM0ouLfXBtViaI1k3RiODIiuEIGiRMK0oGHMJtYiqi0Ax
	 bzWCkcr9dUfHB54YWLFECZuef15FxH9072UM6X4382lSkgJCpnP5ugQM3k5TNc5CWK
	 pyYKLQGmytWYWFDoll/b0r1fzw4Bx7Yr+OHjmFJ25ec94DHUzx3KrXovmCDvq7wiTS
	 /aCa4OBACbCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4BBF9D0F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619965368.3277.6866641690291596706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea332273bd382db18f621960a72c250e19be34258ac089dbba2f0cf6696c26f
Date: Tue, 14 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776199653
