Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C02FDC27
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774040094; cv=none; b=gKOH32b22jTxHb1CUYj1nUVmxx+Gzp4mjVLxhIrOCRIjFj78/uZVc5rsx2BxMhvmZSQEmaUoJ2/jfpARD2d5i1hQCSFeVYblIg6tuNAWMxN3qaVJ7ibJ88+k/F90vkOFOSuaWcHrzNaoTfoejF1PDtJGn/DLYyljlAfxyXN/+rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774040094; c=relaxed/simple;
	bh=pLtE57BXtb1I4AP5HQAbGWgUTmUuU+ziUKZfAb3KhiI=;
	h=To:Subject:From:Message-Id:Date; b=P4MMVuPKGuRmtOpuDMw7qiNms8a5bBHDul+V2cVHc6PpSPLuPOhoBNEZtUfHr92racoMy67fA/vr4D0GgT3KA7PmcG3SCGPtZeQQywEQsw2ff2I7T6HEIcO0QBXUyCnwmWw/nVl6dIGBNXRUi1Ov24enQ6oZY3CdniRv/gzn1sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUFwibur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUFwibur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF76EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774040093;
	bh=pLtE57BXtb1I4AP5HQAbGWgUTmUuU+ziUKZfAb3KhiI=;
	h=To:Subject:From:Date:From;
	b=LUFwiburlRUwfIp+2Z5291lxt3VPRp9N6iMAtL+argKqyKpM1UKzx8wS5pFnSpakb
	 Tv0O2+0JQ2rN6Qf7Qt96PC036mvHvcVW6xOtYpAmkuNBNNIKluytjr7gP78QPE9wDZ
	 lbtGgLJptMGLYTOrWmbSL21kePkgjqNiKN3iEq37J35LgSVUbHewhCUYgCOi3NNxFp
	 7Ck1FunW/o1BBD8WzMR5nwO0y2pegKvLI4oVKQ78C8YJ8iTcJbigCA7zT2vLaNAqJ5
	 dVrGIoCtMNXLWY1U9SBa9w/0RzBO0L+NswMT+C89LcqNwGRq1CIqm4em4TiZ4VZ0mL
	 LRXWZotd3Tr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8621099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404009363.20299.14066160258467102418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0983242b1aed3afea66eef433c0d1f3edacd9383afe1d2bcf10e0beb82d4ab
Date: Fri, 20 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774040093
