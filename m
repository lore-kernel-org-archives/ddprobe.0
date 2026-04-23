Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231573BE14D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776912454; cv=none; b=Q9bY2hLs0zdftLN7eGfnsJd47ufCzL96SP3d6eH40QN+/vAhGO/whOO7NtbN1Kmj+l/beto0+zd6p4db5p36xm+OKJudUJdoQ9K7nC3LA2IUUUkcAqlSl9yD30EvSAAbbJxwXCYrztFLGNtE5OEtYLt/p5rQoC06eHicpHm0dBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776912454; c=relaxed/simple;
	bh=T8H1hXI5bfGbtRGSUz7pAngRFWi5f9alWZ/9n7iLdfI=;
	h=To:Subject:From:Message-Id:Date; b=NXBLVUkTR8NlW40E7kpeLSvlIoeYCWb1kLgv2Tw0jhyem42pTcodEoVUVsadcO4VuheU0Jca/46wTLzxygN3PasTMzlTpNZxV+y2sxR+7miBBJAf4JPJpuC54H0pEN1Fj6SQiH7HcAXwEPV+Lx5e1ljbI20kWR22YBrEviLnkQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8GacG5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8GacG5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBB4C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776912453;
	bh=T8H1hXI5bfGbtRGSUz7pAngRFWi5f9alWZ/9n7iLdfI=;
	h=To:Subject:From:Date:From;
	b=r8GacG5GabgPGKjWkjwFGmy9a/rqtcmaFEdfPqKwOLupeHp1il9jdBJOIXIaUMfYf
	 42mv6uganPnTE1IwgwjtfGcV2cR3gOH8b1vPWV+ylMmRWPCWEVp5g51143Lbw/Jmcx
	 wmEx/wQEhi7sltRTQdwigVUdn8b5f3RzIm+sdhTZY2qzN8KvdrQ1njBKbVudqGf+xs
	 K519ZLE63NfWJeTkgmyKAhVxDJuAKMYCrohO5s+e2Rn9ub2ocVGv0aQOQ+VXM5IYDN
	 zCjwQSd4DNspLkMknWnG6kTU7FXOuL77WCoZquqrApBIl9HE0CkvI6R7PzEHI0EoeU
	 1YBpMUE79pz7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D25FAD3F0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691245368.31881.6911073003916217861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2a1354b3957bb46445be6e08f7798c0ce8aa04966837a216d749f314e56d42
Date: Thu, 23 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776912453
