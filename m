Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F78345CB0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762446594; cv=none; b=As5RsuiBQIl7mbJf2fsHo13kgDV3OAr0nNIwie71FmuFbMSp9geNccEm/3TE6kpW9DGlIZDqc/6IcTay5wqqYAMJ4K1EF0D/YZ7ijRNdocILKo4gkl9QhPIcEZLkLuimAj4laHD0r1tQiXuYMHg3i/ryXfTYcVG9Qz7OGbG9HdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762446594; c=relaxed/simple;
	bh=z1jD6yhMGP6WVRAjetZ1Rk+XkgSnOVw7i8nR+YTr1Qw=;
	h=To:Subject:From:Message-Id:Date; b=j/THyL35sLPKkX/gLw4tQXrCuIItZZC+p6++/QX0A2gR8SSgccNP3dGA62mrLLNomFsfR88g2iiJ7U4AoBbiMlZr9+F5BeVlwPwjz19He+ujWcLNrY9QQOC6eaNzRV6XzBKYdpYaMmzJig3jkdqEtJOV8oBE9TpuwA0x5JhzenE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui+Q0l6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui+Q0l6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762446593;
	bh=z1jD6yhMGP6WVRAjetZ1Rk+XkgSnOVw7i8nR+YTr1Qw=;
	h=To:Subject:From:Date:From;
	b=Ui+Q0l6G6ttLuJ4XNcTI8eBaZMPe24yGaRjTOXPJI/LUG0Q/IV7YbdSbggnenUstm
	 O2im2vXMhk/cVgJNzosB70tb71H+4a0Bg6B/leVrYd9OLN2NUySbJbdHd/m/WoT6X/
	 FH+4HVv7qmPUDExxY56i2T9ifIB1A3GeyELnBVQccXMW2O2wO9bBTGNtckrw6F5crC
	 J5ZdiTLrbphsw5oGWv5Oa+vyzbe4QwmLlhSV00nsqCPAI/EPXrHje7uw82ilcoDmwn
	 CeTVw1vnHR/lNAm60tqc/nrVVPvKVhyLRl1Nq3qPcYcJdY65NW0woWayNkvNX4goYw
	 2gtwD1B8DJiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B0CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244659358.32739.4288063296341228765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bc7a060064e8ed8ab77756a072845f206c218a4d9bc62bb512de56b79d4638
Date: Thu, 06 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762446593
