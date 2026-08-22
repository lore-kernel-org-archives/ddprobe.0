Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B77B24B28
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787382034; cv=none; b=pGbCHeUlEPEqNAqg2j89F4n/S/dXbmS7BYklG3e9TNyK2BPKsechDG5K29tQcbSSI+V7qiTIKvbEPdndznvnh074Dgql7SUXCq7jUTofl+5Kkt/ONKYQlIiHNOWg1YEWQ1GoYpFvsy5wTQKd6rAzIAJGG2NSygBw3Isen62klIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787382034; c=relaxed/simple;
	bh=t9SataAyxSxiP9jZ5gqIMo4JxybwLZ/Sc95he2BRgqM=;
	h=To:Subject:From:Message-Id:Date; b=jH70gjxoQ2hRZX/51611GEszmQbrag4JYZ7moT+JQaL+oka9PHIAwCZcm4do2VHDvNCEyg7dH05UBtGzi0ZXyT0XTAOzgLKh7cnYNd90ZBtRGSlGY4GRtHUMqtE8+QSWilzfnjR5jSpNvHayXXeEmy45Gos18knWqpsdRI11umo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJmOyNc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJmOyNc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08B7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787382033;
	bh=t9SataAyxSxiP9jZ5gqIMo4JxybwLZ/Sc95he2BRgqM=;
	h=To:Subject:From:Date:From;
	b=bJmOyNc1h42XP1DEW6oLXLBNlrf6NExMZBKuGSXeQlCkOinNldPCMmvRP5qBlqK4Q
	 P5EFTd8lhA0wOPDoBI+MG8lUkMfkAOLC+/MHT/vTZo5b0JRaZ2t2wfiU/uhINEdz/m
	 xUxx3ka9OQpYNHgUx5sWcpfZKi69dL91EYiZ6l/mAxsyMWm/acxCIEoSJ2jDJRZ6bv
	 OjJvPVxf2Z6EDgCuX094EtdSKptReCcO7R4sumO1/twauL9I1dxh8OpItOZznE2Lck
	 Tjq6kfSQqZLGjzG1pJn4QfB2Rz/I1VOm9a8OOy/RRZ/Bp7oX8azWae3RRjNpE2H1V4
	 019ebN7BvtrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7EEC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738203368.25684.16980302300535560804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e23c866629195059fb195d36f2e8e4397f16c18281349f3d81ae939dadf60fa
Date: Sat, 22 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787382033
