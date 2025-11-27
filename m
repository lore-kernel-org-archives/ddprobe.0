Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F78518FDDE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764206574; cv=none; b=aMbUHK/EbWuH8KZu6zcYdvriqLmTlb9tDWxly9JscQW9fNqRmniYFf5eUZ51DkEaC1jxwbzgSQqiGaWH1IcnN12PV0SEqp0naF4fQv6LlUTOvvCKaeP8gPVJdpEd4q6ANuEBS6WdbtU8Sp/HO9HsJGbBkzcthH4Ew/q5gCbJKK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764206574; c=relaxed/simple;
	bh=bxF+X+g5IijmDkH5fiCMekqtKIzNOKzuc+WRV76mQPI=;
	h=To:Subject:From:Message-Id:Date; b=Z4Jgs3YC1nF4pwHXhiBqk/JmR0GWxzJNWO40sJg89zn0ikxt6xC17zzFXFIvADKTY7ewwhN6Ny84inqfPVLxBS6Bab0I2t33TTYpg3dCt7bzE5QYEw7REkP4RjrM5l9xGbjRrPuzyuvDQF+Dw977crcGmKzHLgw12ZqTBgueDLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ2+VkhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ2+VkhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 013CCC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764206574;
	bh=bxF+X+g5IijmDkH5fiCMekqtKIzNOKzuc+WRV76mQPI=;
	h=To:Subject:From:Date:From;
	b=XJ2+VkhZZ4Fptg2RF1rtDGzcBpCAH6IN6N5D8WIBQknf8Jc3HFacVMwRPdEMnALyy
	 pUrn5o0S/NtRvfFOb/+8l+7r8voJGJ/raPsAhKxylBpig3EaUv76LiHNII70J4n3gD
	 Nr6hyepHr9DnLT9ijyNKee0r/QSl2uMCwTHS3ZMJjVOH1v2/66FvZfma6IYwLbqvnP
	 qX26GU5lx8s4u6iSGJCK/5u6QowINr/NpUGQKD55i1lnGkPnP8eZjPdPnNKF53pjJX
	 dfS7VtWU7Qpil3se9h9b89tMmSXGGZSo7KRpa6A53Dx5VtubC1RmQb6zq0DVSSBdMa
	 HrydsCxwQVgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE40FD116E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420657380.14474.4158092247463491705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf44c100e9d62c039b0906ea5191e8ac4fe184599dad17942c0e547037883c4
Date: Thu, 27 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764206573
