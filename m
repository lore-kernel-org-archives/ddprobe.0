Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B6C2797A0
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752167394; cv=none; b=G4Y1I0+fm5pvRRLYQO55ZPgyCXcFvaQg/4O5VCe2+u7HONBFpXNoam3WjLpmA9HXLXQBigHotBzjO4nrWkhRwITDv7L2J8B4jUHj4VUeGo6yy/lvWXbsU0yXHAGG488gaIMu4PHvJ/fxTorlp1hXQ/07FtPE2zdaE5kZCVnlN48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752167394; c=relaxed/simple;
	bh=2Xtys+YO5EMLe/zL5q89OYeZm5wjbHqMYNtGtvx4Qeg=;
	h=To:Subject:From:Message-Id:Date; b=Y1Azp9ixnEYuVPy1iN5Sz2hBSoGmMabonJnGpQzoDgYZ4QK+F9aWYWxhxkwS1uo0qbn2lPnrA7Y2Vidth0TMk86vvMCV474hk6m9LqXMYw07YXDt1ODPO8PCHO9rhPzYuyfb3x8I7A7QM7GTpEauvWtE48Oy9JAEhnbL20Myw4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBXNFgH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBXNFgH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0781C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752167393;
	bh=2Xtys+YO5EMLe/zL5q89OYeZm5wjbHqMYNtGtvx4Qeg=;
	h=To:Subject:From:Date:From;
	b=lBXNFgH84QPGrN3FhvKem9dyiyoyYX4VAu7bYgN750LSR5iEAdc4qN+oDjZ9wS5s5
	 c5Uik0En8x7paAuOGqDKukASwjNDcv2IMIhLekyMiBsS7iwmmPq5dL/U2Z9yw4HXTb
	 hQ8nbpEUvI9fu+XUAkVxSko4E5VUVkvVi+MiAZvbS+hZHTGsVZpDMwCs+eQPVFJpLS
	 lXRWDY+FxolssSCHmOP2Yl1zPuGHzy0Y5YcZ2bXf7AUW7gWb9aUgqPYCaIKHUDLViQ
	 Lz/LrAvMnULhI04Nf+5avQG2R/1BsYTO9NHvcJ7SNSsXVl4ph9sTyGnvUhA0h71NtR
	 U7a8UVMp0pdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E1C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216739358.1558.39159444229759968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfa8d3326d8b863768afb07809435fc5ee7a608bf747d5a730fc01c257feaf7
Date: Thu, 10 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752167393
