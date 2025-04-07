Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1CD21D3D1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744056594; cv=none; b=LqhyppTZGIhJTW/jZGe5fTe1LGp9h8WQo4EQBUvvy6vEAOx4NjLe9Zw++aT3CLSHE5ISDFO6FAakZCe585f+AMzQsfJaMkxYbcyk2SwffrQ1bdjdZnnf2u59iP887H1bvEFyR+BvNbFQDZbigEkzyW5PA/8BN2GVOyPx+ZWO/Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744056594; c=relaxed/simple;
	bh=LU6RbOPH2UB40DXY1f0sJ2Rj/hzCZAIyJTo8tTfUFqA=;
	h=To:Subject:From:Message-Id:Date; b=L3IrEnULrGc2T1cVBvcEztV6RycAoAn5rh727y1ELr8x/I1bL6nQBUhDxPyk4UfELcwfLuud8zQ+A5jJAxXalhJuwr0IfH8X9saIHFSxnhQwxqolc7dXzekWWHbA4U4iudWh7DFhbEHngpo6pOEeZRBZroWYu9oT8ytV607fvbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFhoeOjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFhoeOjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744056593;
	bh=LU6RbOPH2UB40DXY1f0sJ2Rj/hzCZAIyJTo8tTfUFqA=;
	h=To:Subject:From:Date:From;
	b=OFhoeOjb/WtqqW5xoqvJcCSrMBVZourb45HYS83iUW1ybpxGNnsEwAOgkDrgFMc4B
	 zBMO+xKNPf5qwtczZUjnyC3utekNcS4mmTdMdw9/n496rdkLlOfkVF0uRimCYMvvPd
	 OdbGdr/r9Bpvf4JvKlJ/87apQt1NUDp0uv943EbXTf4tP0DMYN2OrZgpeB49bKELW5
	 kJgl+j+10Bmta7SBIhmutzs5KAK4/QwQ4qu3K7j+0q4QCacoO5rP0wqiRzDd64oL31
	 YkmhHwAZuBrRCvJkJNVFUdkTBU1rBbLwtH6qyZGfB2Nllc6qyer7emjU4sX9DJaOoD
	 Xd1AsmKbeDfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCCC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405659358.22179.6987679307556942454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52983ebd8451629acdd5aab68b7a06f6736900cea95759dbae24af2923f0b01e
Date: Mon, 07 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744056593
