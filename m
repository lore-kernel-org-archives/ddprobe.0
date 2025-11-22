Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C42C2356
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763848314; cv=none; b=UnKzwAhS7aEFxAjL8WiA94/FeqbzlMNGQPAI3bO3wXMSx8PsWa/86azzm8gnIpGsEEX45s4SoZaO5IicS8KFLFLE24+62ovUmHdux7mSYX0igAc9R4WwcpXyGmdvwFaVJfTufimV1+kFjS81/9PHfDQ5xCfeQUQosGhEud7Ghq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763848314; c=relaxed/simple;
	bh=0U7y/phufR2i2HoisSfYLp8Opn1Q0GG+7EqcGeOpv24=;
	h=To:Subject:From:Message-Id:Date; b=XTz8jjuLyFw9/bMcvzg0x0zHbbKA/3HrUbRvCNNBGqD4zEYKKvvkYm2oy5qL+evKnVAgG7Kdr7VTrSI3McUiXMITEWRMzsnfYntv/KFYoyhL39cwYkH1/+7YFiRPhFQT72J8dT+0Ms6TFy5MBvEDzbkJA7FRPzcykDyIc2Et0QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIRXi2/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIRXi2/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98B0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763848313;
	bh=0U7y/phufR2i2HoisSfYLp8Opn1Q0GG+7EqcGeOpv24=;
	h=To:Subject:From:Date:From;
	b=cIRXi2/KxuQWgtVyXJiFTSx8q28uB9xsav+n635oW43JkLyN8YSpAbZtWpRLQ3Do/
	 eiTU85tCtGmbwOJDI5aH9iQbw7iO08MIpxDPn+EBIb7tiZyjJLCFlxEN2peWuFMZb8
	 bcvkj5G8hLHa0hLMTtNb9BO4dpw1p3SfssnsRLE5E9Ij65thnq3EJz5HJEHv3vUl1h
	 VwuJqank/AJt1AT5hxL2Vhot5gd/mm+dvAd2D9mDni6m7IpyjnhJEEohJCHs8wUP/h
	 PuIKNevfcuWCa1eKpCWtVQDXdhW6ihU4cAVkWWMsr/TX9WCBNrUTGFAaauwUbbRSrf
	 b0vuqiXCRNozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6BCFD2EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384831358.10877.3115038265993726835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9510578505da7024db1f25071c00ebc1476e622c6840d6f3fa792414eb23fef8
Date: Sat, 22 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763848313
