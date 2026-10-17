Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF2E25FA29
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792278034; cv=none; b=Gttr+Kb0O5s80RabNmm4A3Vwz3zO8gFWZF1PJRswM9ovKzwoyDDNkd/0Lz6zJB3eIAVnkpEnLIHESdfjijm81Chbhw+NmVHyHXaQ3uGf9uhc8wleLjBXBWOd60pnyUhfVRI82CaNcdQ1iIG/tyFcDdtAsMnUT2LDz4fER/IRhbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792278034; c=relaxed/simple;
	bh=ZUweoGPbEHZKqluZo6GTePpiqytNF8JFUCgbxRDIG0M=;
	h=To:Subject:From:Message-Id:Date; b=Y48qwujVoWgEoyWIekjA1A+/cd/i7K/QJxTqXLszBJODSojQnZuMVl7V8v0ZpZ6lklfgN6oPRuLAUEPptwUhIZ5usCSNwGv8J29b9WKECgcOpYIM6up2ka4bIiBWktsvax3Lt/ksBvNYbf9zf9JHaAqFQBjfTIW9akCd1ZQUT3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3nUCvRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3nUCvRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88C3C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792278033;
	bh=ZUweoGPbEHZKqluZo6GTePpiqytNF8JFUCgbxRDIG0M=;
	h=To:Subject:From:Date:From;
	b=I3nUCvRPmaMSIo7WIv2Pz17VH2XmFuSqcqV/Roy7pxAbB9FxP/MF1wKrdBoQaaypW
	 woOjvVtfSU+I0BBUeni+DRICDEmnVtfR9uojaWNClnzBn0zWLlNSlmmLI+3ilnda8w
	 C4XGvfZFrGJZ9TvbruLdKA0p4NbW9pOURr7KnH8oo+bdmzxiDP77CTSp0J85AKh/gH
	 L0E3wb5GkFm2KFor0P/XTJTYq+bBmXAA/weJwgWyl/n03AtKt9aUiCfNbsALD/VR7W
	 DxYT/eb+FSHd0XC380ArJbZxqtZ3t3ybLk6UYVuCvNIm4VNtfnZnlqo6D9g0k8mdX5
	 3E6uPoeLWMQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26FFCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227803372.2877.3976449977819072494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cbd83c43a128cf875931ecf8b37cb4da677fb5638dda6984fe0753b9a93364
Date: Sat, 17 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792278033
