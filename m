Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26761405C57
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782820114; cv=none; b=oJHPyfgpfCReXcnEbx57s8G7HHWLCpe1dITXnF/d32bmt8OAyfQi4qt+q3mC7urTetXtIMvdVi4nA26mo9tBHYoFtXzwHQonLWkfzSkl79jkCFFCq7LcrKnRyEv7lgBLErLFW3n1uTeZ7ZeHe/dT1OmT5R8NF6gxaGUYwQFTPsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782820114; c=relaxed/simple;
	bh=XlguaVi6KpoTcfA+T9qUCBzIaDZ29Ca74SgxTu87DfE=;
	h=To:Subject:From:Message-Id:Date; b=Vm7jOlTRn6/25lOlQrvT9ftKlvoeNV+g10LAoAKIQTFfyvfxIoG5VFX8Vs1xD6GZmUyZ0KYtNMJm32+7hc//bUOMbJSrt0OKmPfrw9ttVOxW8cbN4REL0ROg7MzaWB/d3OnXOerkS8HQPz3o73Og4Chqot6fS/VGuixFy1QR0kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbH+fxVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbH+fxVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF29BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782820113;
	bh=XlguaVi6KpoTcfA+T9qUCBzIaDZ29Ca74SgxTu87DfE=;
	h=To:Subject:From:Date:From;
	b=IbH+fxVfCsU2JzOlvNBENbld8Yh/fXl5DFH4fh+JPeKB9i2gfiD5+y+LPYFme+SGh
	 SvfTn2vwMNQG6tt35ZDlwcD/upkYZhguE7dgCYe1q1mO8nYsTc4ikhGVkMsX5BtE2C
	 AEFoUp4R8UB87qzdNF1moUTddInsIbwKOpS4Far5nkTOKWA1tZz1lXbeOT6lrz6kRP
	 W8DoZR0+XtG5Xz1C8e4lFMxYSyMH9tjgUE7EQgPXVOK00PsqTW/N/ZHIYkbJWshosW
	 3Qq0gWqMrP8Lq27A+u+fd3iorQCH5BMqWxq8q1NNGm/+nBHo35UuTdRkK1+aIcIY7W
	 +//1gq2TiXKPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D9C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282011368.16223.17133417059394335404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4956a070aaffe628647c606e77ba5189fdec223b511ca76cf7542c5cb5ef943
Date: Tue, 30 Jun 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782820113
