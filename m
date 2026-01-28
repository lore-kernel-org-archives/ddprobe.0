Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3272D5957
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769586834; cv=none; b=O3oHhcZPruZ2Qp89y4uh56DH7tki2PQIu4HYLMz9XBMBurOjOxQ948mC5VdRQuJdMq9azb4ISSatWOji7vNV9N2+yZOfloXUhohbxLEYxJLDUBpCmrd8526pell1NCCC2GGopxQQIvEgmRuZOegMgGNv5F96ajl6x/tMbRw+PPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769586834; c=relaxed/simple;
	bh=Ca0IUxVnRYXn6eZFrw54ixSbmI/P+62s4sBRPWGiqmM=;
	h=To:Subject:From:Message-Id:Date; b=Dmv8BilzkS8ybn0/PdQYZBSPQPVkrFGlN44mE08J/3o2QFXbnKwWnamAWw+Gj5ubWH+5j2KEYtXB1EBbdg0G+6jw3SP/V5yCHXgWfCR9qE7E/UDZgzCH3k0WmtccQNFd2YFfwRk0KmS5fhqZKxrJcl3BUZsNKma3tqsL2+iNiRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVQW/eg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVQW/eg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769586833;
	bh=Ca0IUxVnRYXn6eZFrw54ixSbmI/P+62s4sBRPWGiqmM=;
	h=To:Subject:From:Date:From;
	b=uVQW/eg72Ey3GDl3TTBKfuF0/bNqxSOIbqwxPiHKG3CrXQe9TrGJKNInd2yhc+ykh
	 xvL3FdqatFMRCIs9jQTQcLicpS5ZssmtHTJ0vWDhtAcHtRgUQ/a8eka4Mo58wL/26S
	 c3XiHpOZoO2bpEldAlzr17BldbreCo0OU93X5fnE9mk7DuPm0M/fTkDlvt1Sk4uIr9
	 rQ7hpxIwnJfnuLZq103FzqvSKDgj6WnOCed73rSXbwZAVD/9guhOiDH6QAJ0z3nH9M
	 WQi82FaaNfrQlp9AGDqsMRygiEWuIoUsW+xjC6gfo6n94n4pKbfQ7ipZW1RRDlqN/d
	 0odlD0R+laUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621FD35688
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958683360.19732.3898683008762122208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc771e4191eddc44f586c55013ee13a8a42da7a05c49cf5314b626ff34b16b1c
Date: Wed, 28 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769586833
