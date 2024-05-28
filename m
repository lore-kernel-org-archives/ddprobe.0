Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA18175AB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716920663; cv=none; b=tWT62K0LSOf9Xcv4EaVgz/VUPvmf8zfBzvW3L5Z8A/EX1plF5tIXNh4tvTV5yAYnMutZM3PAVo5AjOcYjkLipdWgVf5SpXOEan/9bVGJDKMgGpOzeb74tlYcgroqJrRwnleCGyc198T5U5CFo0H8aRw2JY501eNq5bnnFTG4OrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716920663; c=relaxed/simple;
	bh=Dw5XDSQ95LZiHVvs41le8wdVy8LIoeFP3pxNUnJpKIk=;
	h=To:Subject:From:Message-Id:Date; b=pLTzd2/xryiRkwiiVPYUa1YBXtI6EnnYLHfrf9R0edX8e3yGgMVfBGaZUvYNeoJHNUvlUBU/EgWbLh5m8kuT+sL+/R55JZHsN4BJvPn9InAP4O7M1wfkPHb++gLg0R1DmtQU05M344us0Mm0pIBmxzXMFm+7T7XtFJSFrjlD6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8YozTwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8YozTwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B056C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716920663;
	bh=Dw5XDSQ95LZiHVvs41le8wdVy8LIoeFP3pxNUnJpKIk=;
	h=To:Subject:From:Date:From;
	b=G8YozTwcqV2QO4ejJJ/y37OSxl1TPcU0FCET6lsBaTyHvqfTZuzLZT5T9X1fMR5wx
	 IWsihYOrI7qKOY36wS6tTmk3Z5pHWsH9wp1cuDoud0YBj17WrhrlJ9ZCztfLBHt7zu
	 czvwCNaWejhfscIbgLZp0TfzcrdQb9mYCGNkYGB3n5GzUNwzE7pXfZoSSl2Cey57dA
	 eBgHW1fdZiG+UnfLAG9ZwnANWTCTLJU1ZMVIyZCmRYrtX1iCkap4HbgKVIgh8vr3AX
	 7gMvxn0+BGNlWwixIpXcCuwTGJ8YC2HRUmifl2Xs2o6a4Afk3ur2or+YCwputlUyNn
	 264qDlPpkx5CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84DCC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692066283.7362.8122722177616959540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bcce73b240444424974b949980ac26a56cc41cc93e2c6059bf00ccedf49938
Date: Tue, 28 May 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716920662
