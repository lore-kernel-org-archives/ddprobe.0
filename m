Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39CD15EFBB
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718735963; cv=none; b=cnS2l9nelA0wRpSLdakVjwtiuoq4YZgpkGruaiMDjp+jbKLyTTkFqlHSW8mMz9rAyAOewJGMaorprM07Sl1Jubx84YzICBnAFgJnSKaoDMm26LPjNYaKbBPsck5clwwPT9qlXe+Z4FALZwwLnERm5ScHRUBMnoeJJIfOUNSxUk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718735963; c=relaxed/simple;
	bh=EzTL0X9Q4GkrQ/hiPX15HwcyCRSzSiAFcBSzTe7CxDs=;
	h=To:Subject:From:Message-Id:Date; b=kK9B6CxD2pxvh5hY2b6CnLLDwLVGWeGWY1NEsRbrRvagR9eqw/W0cm5rlsuKl49lPB1i5fHD96WzFjMKzwxglrP2xqMa1yb+7FY8yuAIRV9kMfD+NlU8s/X6QzoMHroQexANacvEFHTTh4ecffjXWDSUkUfdki5u2AZjCzhUaIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWnXr3DE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWnXr3DE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20076C4DDE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718735963;
	bh=EzTL0X9Q4GkrQ/hiPX15HwcyCRSzSiAFcBSzTe7CxDs=;
	h=To:Subject:From:Date:From;
	b=XWnXr3DEWqR+qJWpZ6iQi9y9jGVFTKEyvosuijDxm5mPAjomrr6cDEFfFoYpc+lLJ
	 RQ6KLVDvNA4KgqE7XWGDgLS5LoanCkPiQPmgO+vbF5bMZjfeecofQNunqzFnhn7jEJ
	 Od5eWwX6FpGhth5UyEVyu6H34/knourDRjYlpBNfwdlN/e3rnP8dP3IwA9hL/sf8Nc
	 8H+GgHBpmcuJBvVFqjxGptE7oIFIus0A6oMlHxFOWHlNRoWXaOENLkRgu/NrP2IYKo
	 tCDugC1wLG/iAWJMW9PfGyP7AM9CLG+ODQ3AjWfjCxf+6QwiJBJdZp4WgVK1HzjPrw
	 g/5jOc2XvI8nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFFBDC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873596283.32308.4187255322388548942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9f123c5ec24282acc1ba948caf73ab29fc7ce182d618cf49d58d6723824660
Date: Tue, 18 Jun 2024 18:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718735962
