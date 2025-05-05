Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C146224D7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746415194; cv=none; b=mQPYSI0Y2xc2yMm7yc6AdSWyB2pyg9R6mZFS8psd/x9GQ4/5mBRfwA5fZeWnzHQsC3hN35gd5K+dgOEh+Yyh3L+1E5dk0sXVYA/+TlN8udi3x/ckSkueb4PfeUP3iBCM1S6WxU5lGAie7A3iBIC9jnL7t/Gn1nY8R+SY/YuGqPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746415194; c=relaxed/simple;
	bh=bL5F65MkV1vVQ8lFfSKSnvl7Dy76HPGu5hrVXyVM3L8=;
	h=To:Subject:From:Message-Id:Date; b=PBf4ogdXtnI2eWNjzerQBfp6tFpXBWAgST3D6EcsR/hLlCO2zEV/jp3rRZTynzByUTnqI89vPA/P+jxbfmKU0e2yxKenRducyGenTF/XPsF5JdOAJh3wfaOdqvE9r+2YBI+6T6q1jG9qsdOrrW99OeDRmbGdxam3cXpXlZcZWpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIRVNTXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIRVNTXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46ACC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746415193;
	bh=bL5F65MkV1vVQ8lFfSKSnvl7Dy76HPGu5hrVXyVM3L8=;
	h=To:Subject:From:Date:From;
	b=iIRVNTXFVMafAFMkHLCVxjcyBfMzKZEz4BkPh2wEC841/vHksgboHniDnWIn+TCyW
	 QPBjcobrwrbE2l/Y039uj/e/ExVJfjgFWLF2eHy1qwmegieDYaCjNyB4Zp6o9gPAyR
	 +kK4stZCF0N382eOGGvqZcvrF8vzSKwdtQRiFUzEZ6C+hnVV3mOiqI4gjjgG4SSI8Q
	 uJMLKPvZ+fo5qAyrVNCvkXkwH5VxRqdhNaW4yxTlwCyqTY7fOaVTmrKWBbG9/Jmnt8
	 70qn7Rsavj1xmgw7UwfWrJnql5Jo8U2baUT3dMNImleBvExZazh2qAv1mGLq1dOqWA
	 9WDDB3j7Qq7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD9C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641519362.9726.306665906124365514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51389bdd727d98264c956c53707b0663f91f8bbc8382025ac8ed28ccff24f03a
Date: Mon, 05 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746415193
