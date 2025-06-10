Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342B228C2C2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749550794; cv=none; b=XHQ8Vvetxq1Mt7hEpUTWuWAX8nh0oMlbOkmCo0ntcGIbznD5toauHy+y99bbDFHcOFMjq5CByYRdViUzwNs05d9IwV+j0RzBY2ELz0dghCjZ/yTsrUXCupzZ5w8e5S1qKI0o2Sxnhv9fTEOF9AaMxeuCRtyNXSeiGSOU6BrETOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749550794; c=relaxed/simple;
	bh=Lnp03DcqDssiglvGl1dvumQlzH4NbKYTgTuwU0OVcKY=;
	h=To:Subject:From:Message-Id:Date; b=q1Vu0ghih3bmlWjtG3WUYQHs3GTkYe85sNSo4ZFGbETBsR8OzmqdpFjIrCD2ajqL+gqYIQgaLolWQzlGXH/hg06jdSVMBd3WzNbdcQZ7xvBfhiGYNZNyb751x1sj4BtDhrsAg+UvHSEcQruOWNdDwNE8EFhfSSv0AW4hbR/k/4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmZEp7qX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmZEp7qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE1C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749550793;
	bh=Lnp03DcqDssiglvGl1dvumQlzH4NbKYTgTuwU0OVcKY=;
	h=To:Subject:From:Date:From;
	b=LmZEp7qXE0ZXALUo7Q/VBvP/xIP7V07kmvrEEEhXzJhStEm0CIA276K6840Xy2+ZK
	 H3NeaHN0j9xZTgAlbqGAkWN7B612XgF4fEcMKQl398akuOZSsuo42VJrSM1Z8dbR0j
	 1M4wWwtUmYhctFVIz/LhjKWSw/A21OKUPyy8iWPwMivdrMM7yJ41VyxMqrnQ4ym/bF
	 ExZCYJrEJrR1kWJdOH8Xxia7XWrTYGdkPqtlUyP8pNWbqE5A9uoVnAs5djwQmfVXNM
	 ZSM+ObaFZ4GQP9w9ipAowWeC2Ee5VDjsQpU7cZfjjcjFE7Xv2zTFCD43TL3oj4ytFP
	 IK1RN7BAlFrYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFEC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955079358.11356.1456993243270755238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6492246b64078b557c7fcd58077cf46d311a456e550fbe68a9428b76a03fa14e
Date: Tue, 10 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749550793
