Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B194A07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720587983; cv=none; b=NHFRt0zS8JJ5FjF+VYZ7EUm9/Tk0JGYt0cO8ON0ZNuhACD9YBKymkUyNaEh0viQdSkrQSCRzhCRFhlWcdsanY7ojwSl9BfZm2UeqzTzwt195gq+skZdTGjYTYNPH1uompMQvsTrlOOKBaDv/Lh2Fui8b8O2ICSNhbeaeUy5wzh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720587983; c=relaxed/simple;
	bh=YzURYeGC9jPI/Sfq+ZIfAe1w8klMEconEGliM++7qyA=;
	h=To:Subject:From:Message-Id:Date; b=Toa39qzfHbJUms4w4PWV01mPOfmegdkj0a0uqSQN2qZRPwfNuO2TJXV1vzkkxrPE5tANWl+664q2QMWbCmG+lT/itewCIZxIpIaLSRR/IM95Aon4S3LRKGwWNaClm7ium2Fh3Pudcl46mKdntVMs5NCtfS+RnbfAdW0RXPQQ9Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCgMYtVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCgMYtVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA51DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720587983;
	bh=YzURYeGC9jPI/Sfq+ZIfAe1w8klMEconEGliM++7qyA=;
	h=To:Subject:From:Date:From;
	b=LCgMYtVQxidOvHqGxaFXFJHfJutxwXxQ5w2vu9lCXtxu4IazZDXIV5aTvIJP19Aa1
	 Yjcup5y3iIoLf3uoXkn/96c5kr23OhvME0CxdmeVj/7Hf2uOvQCNCIV2eIeReJHoEM
	 23rJN6VKBD9p0YpgKN+mW1RUQEEDPQ5OgNeIv6C12dohi5zS42Lb7SYtEIykKGmJk2
	 wkuljN++ACFb4nw7Uxy1ZHy8hLwHfUXxUCPAQhHvoNWNVm4MepS4iCl0QPqU0fczGW
	 DrVmrsPF5PPBWkxkLOgI9N7M2sk6o2Bv/FmHoI390Irw43o1Kch4BTPZaZMFkmrp9/
	 5mLbyCiCX1jkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C58C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 05:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058798282.14582.1405418303145703594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f803001e90674bbfc199f60c15eac4aaa60536dfea239caa949543a5d9589d2f
Date: Wed, 10 Jul 2024 05:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720587982
