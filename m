Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B80918DB02
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648195; cv=none; b=F83DOw1Mn08W9G53QVoTRbf3fVV7pZSm5HwKd2MRKcR9rwE+wjv8yxlkcWZZKQFgdlfQM5Q4GJqXxv8hXL2PBtL5UFyPItTSJQzDWzW6DJr0aG+ZNUa1iNCc6mGvQ437eFAtJgbzcS1zSi0dTY6MzakQg5IT9LAVjWPXtE/qL3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648195; c=relaxed/simple;
	bh=ZCGrj+4ra+AO6gRxRBYI69Rd6QxUZIF+IeNr+wFZl4Q=;
	h=To:Subject:From:Message-Id:Date; b=vEpf41jT1/ROVe7nHx0WZPcv9w7oHtqN85q02KrMpeUvO1CgGwy+0HslLY9vifF0OU4Ig0X2gKvtoC8D6Fct7W+8yJmZC+K46RIuv8eClSOEj+VffCelEolq9C2BpfGP+RHnr9BuRP6Oi0tz6m4HqsqRunAa5Mmfb5y0HJTMR0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRFZXvd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRFZXvd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF04C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747648193;
	bh=ZCGrj+4ra+AO6gRxRBYI69Rd6QxUZIF+IeNr+wFZl4Q=;
	h=To:Subject:From:Date:From;
	b=ZRFZXvd4qHzRcgivY3D70nFJusCtnEpeSBr+bD7C6uAlAQdR+b7WGSqxud6gt39pu
	 WVRYzRXTmLRAvN+ZV53lGhsyU2gBCIuI5X6KzRjoYLCgnme0pzpLJ+WCE01/GNalQ9
	 48BvFEoTKkrdprPXrrKo7U9NUvIV2IlE1DTgLP0taCUJGh5erQPQObTMaU39c9YlAh
	 51OmUs66QOU3w3ZC6SE2LiEeb7GwIthvV5YwCRZaru5i+uu0TgSGmNWQF1SwSgklIj
	 bqx25Cvd258YjxQJAeF0LSSkrGpemHwwbVlfM5RcBGnO8au/88YJDUTP59Dgw+XFL5
	 va6R/6CQh9+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E9C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764819358.28157.12530027695864295582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471522db25e2aae06627122f738c6626b6d0d3ce1b7f36b625498758cc181a8d
Date: Mon, 19 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747648193
