Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF2E149C53
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749491994; cv=none; b=oZiDpnENe88CaCf/iBxKU5OWvKjGadeqBBU7FBU/LicEH/SidhIYw3Sqvrh8Sq4qEpkJf6KQDc3L9OZxCAxVMC6UiZEfkn3xCXJZuNGXHNdHZxj32DIbH9Mz2u0BsEg7sjNmCIlGgo+eFt/RzBLe+4j9r2SmIqxLKCAq4pC0Mdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749491994; c=relaxed/simple;
	bh=Uk6Vji912CzYaVi+NTQzxRH426DjfWb230kLqUGEWUo=;
	h=To:Subject:From:Message-Id:Date; b=PasAVhGJODalFl00rJVBW6hDpg+6iqQ0Mg9Iiw+Ys/ycr5rPDIt2mKUkJS7bI4YAb4tVOtDU03ziJbyJ08Pst+K1gVxXwdALffyQjq2yY6p9a9PFYZ5dPVycDLQgkCyCdE6HifdAR2CNk2qg6aYqW9f7wwIwWPBZOuAfqU+b4Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJmcCEB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJmcCEB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0662C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749491993;
	bh=Uk6Vji912CzYaVi+NTQzxRH426DjfWb230kLqUGEWUo=;
	h=To:Subject:From:Date:From;
	b=MJmcCEB214CmaJHLT6wh/DKTs0Dm9dwQ0MuvaDD5g0nyaTj41iQl8kPiWM1xcgIQM
	 wNIRANsKljZZLXBWvyG+TJoEqr8t0SzJguw6cD+L3PbH3+DukBKMdj6PDkzxwhraSR
	 jWrf+rOd/gLnipRMvj5jDAimexjJQuj/8GCm2LgmrooBkV803jma0Lqh5HSl/5/LFz
	 2r7PTQ/uawwsF8eyaXHmwjp4OedhpzAw+bv9izMz3Tu4ti1sypBEwqXLvin5w8dd1e
	 7ZTLaKUScWxBd2wbAk/eanqU3Efwg7DJhptk0G+V5FummlS+Ijdj6Bol5gNw3NpWDa
	 VNanIoR2PnHTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EFC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949199358.25205.1899728910673251187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3fa82ce8c0d0de04dfe58723c1e4334d86cf1aff696d23538d4f6aa08f1421
Date: Mon, 09 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749491993
