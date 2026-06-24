Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152183A961A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782293795; cv=none; b=nEhyOlKCaU5rCiW7Vi/dPiq8HiDureiSfeVPwfOmROP0ED4a0Eixy8hH1n42Wlr+7UxujXWuX2OZ2Nt+/NMkDOnU2l8r2tPEWbhNzXm44Kkgj8Y1LXZM+ADPBn0znN3kfQmAnCSPiVstO1Dki61ZUXgaDsxOTMhlayPh1WlNNro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782293795; c=relaxed/simple;
	bh=/ZNeui9JPAyWjunjaKogC5rtMsNO7D/RScSamK08lPE=;
	h=To:Subject:From:Message-Id:Date; b=nfhFXwp1onB5c1OB66EOi+P7y6opd7Y4j0tOopguIZZOFETJB9YIWdBjRXtJqw0Z/mRp7/lU2/LFvY3IIHqIggcc0q4GgaE7of/9BSCk/PTFfYbY2Nk9FTQt/XSqorDUS2ER2tnszUpC9t6zHgSE54sv81SuS4NTGD+F52LI+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv8Q2xcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv8Q2xcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50201C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782293794;
	bh=/ZNeui9JPAyWjunjaKogC5rtMsNO7D/RScSamK08lPE=;
	h=To:Subject:From:Date:From;
	b=Dv8Q2xcPZq039aMB/SpBZhRJLNqqyrKWO1pVZeCPSRWGF8LYnIe6slC8QPPMvDt7O
	 Gq2JBpUiDOlzlPo5mNAEI6eFwLdCRULhN0gHfKZe1nmSL9XqNUGpBn/esjt9GXE3IV
	 cAImcVuhylB0WujZp1Ge0K+pt7ob2R0Y0vX8shspuqqG/j3FWJUJKZQq+8W58SQbZE
	 8satfXuQ3bIi6nzAgznnFsNVpQ2nVg6DQJQWBonXy8vTh5pfmJgn3+AGe8emidUZNg
	 hovW4OX3c6b6YSWJEVYmxe3uMk5mcaNUlADsEcPm9404Un+ABUdxNG34BZedWYnNqc
	 uzdOagbB+9plA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED53CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:36:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229379409.18827.15369044698996847200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6868d9ef00b68ed24818d701c9f4d124cf1fd08c19a6eb2e050cc2aafdc42e
Date: Wed, 24 Jun 2026 09:36:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782293794
