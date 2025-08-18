Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB92356B9
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755549594; cv=none; b=u7LArzxS5ea1Wo2KpxNzE3N8oIa8CQVmWNxZdhJBPpUqvIXWAhp7mHMnJQ2QA6ju3hbqHmO+hICuo9QWwpRLMpIThT5SR6bd0Ugs1BF3B8Zs9bdmacbrMwdytjEN5nbJY7M79KLhjnkSu/iYi2JcTi1hQRY++3n+5MzpwBVwYU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755549594; c=relaxed/simple;
	bh=7tXXFN/t9Z+6wGGBS1i4ROoIFtpdlT6M/1lLklb7Rzs=;
	h=To:Subject:From:Message-Id:Date; b=NBwqVmiPbemMcDDfZNHOd2EtqPL1uo3ByafYL8JweE/JNqSR5okL1BOcCKoyYDZ3ywl+AHk9FsGtar9n1etJ9o7W+mBPg27MlwIhZs/4mWm250cFxnixqoHb2gWr21LaAmNLo3KyMWEPqSUoCEEKZJt3hzfshMRghqKP9Id7Rss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpyneB+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpyneB+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E4AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755549593;
	bh=7tXXFN/t9Z+6wGGBS1i4ROoIFtpdlT6M/1lLklb7Rzs=;
	h=To:Subject:From:Date:From;
	b=OpyneB+dNgbbTlytjrlUjFt/Sm6LZis+vSltzeBPHX1sZPIGG+4wyScAtCwSc+07J
	 dDfaKQEQlkIMtcoRFKfjM/L3fkMfVCIBLiTY2FYPuYGQAH3hg0PN60+ZUkLOKmqiFJ
	 TuEwtqbsY6cEg13zUHPX6YfR5BpNCQnRk+y5ABR18xSyGOXfheAqyzWFIE65D+daVj
	 tFRMNd0HK7OssKfFQ6k3WyCNpiZdmAR7nxHeDMtYQ9eRrp5VTaUSfTZXxyUMZTFPA6
	 0SEZf5gVbIV7HWfNrT5lxLLu4TngDKee3yyn9HgdOQ9UXLJlVm5W0L1rQ+c+iwmh9o
	 6Q4W6FKo9IP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5ACA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554959358.8359.1716403196657549704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aca89d06f4ce6c6acf53fe83a9efe71b391eb21bf89f6465b90764497d12d0
Date: Mon, 18 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755549593
