Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D31F1513
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771392294; cv=none; b=caxAJIe6Jk+RMkyjTyioqDGsTT4pSlfzTmIXpHmMcs4AL5sFKDrAmQr/qjmO3aVrzfD6pgSieoece4wyPKlZ6W5wj7XxC7PlwwWxg6It7/ByAVHTS4INHfFBGFb74BiW1iVTXOVBpb6/428c+BFbf8PuhCjx7Ik3sDHcRZBeygA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771392294; c=relaxed/simple;
	bh=wO8ks/S1sSKfxu/0+ohVCx64Sn7rjGTyjSnE3Dn5A+k=;
	h=To:Subject:From:Message-Id:Date; b=B1iHFw8gg0h3iI+rCQ5uWhm+eOXvc6rt6Ktm/SQIy7n9jdLVrBa2YEVdPIMgkDNXBfJQT485rcni868OlbA8881I4lV26GK7FthUB7HQjIBRWlxml9ed2NaQX5OHgeOC/KFR7FMZW4bWav/wk8Sl0XRpKsD9MWikQEjvaJZZrGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhCy4vVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhCy4vVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2FBC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771392293;
	bh=wO8ks/S1sSKfxu/0+ohVCx64Sn7rjGTyjSnE3Dn5A+k=;
	h=To:Subject:From:Date:From;
	b=IhCy4vVbghEQMz9j7CHvCuQtU2ZyT0dLLqsLEbTMn/B9yd8gvAYGDXF+SWPMPzyL5
	 kM2WrVs6y5uVdkIqRnIBKrmlARSickvGOSWcFjoF8mNGejU96WBUmyqm4LCmtcCSmH
	 8EDcifF0/iakUAxak1p8BlCR/LzhQcLuIbjLP0RoRVX3SLleYVepu6GxEMm53yCbly
	 XwjbPKdDJ8tRjCEd8Va4nOJYD4Yt9sghJJ/J7qfMnYNiIP4rmVDzU/vObKjN7va8YT
	 OzksX+fm5JystGKEHsJIcn2AW64+vmQaV769KvX3TqVi7oMa/oEdVRq0tXcQPj5+uJ
	 /fry5veNL2e1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5110E9A04A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139229364.13468.4622287677040059241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe04e24e81ae1009f35186da211b1dddc0d538878b737422349297a0f98f4f0c
Date: Wed, 18 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771392293
