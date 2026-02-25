Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E4C3451BB
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772024694; cv=none; b=e69//3FvivL59ZIkW0OJ0K6FJI1EZcJSRppa4Qb1FaeL8oKx91kj7HJgyCB474tpHyWrQXOu71EqVMg+zBaWVXr+YlxMFuqfy9XePEe5Ic867RO4/3l4/rFwlvcMNItEbrfk+VqWJ743SgE3x29RnRrzprH6uQ/4D0kQs8/vs6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772024694; c=relaxed/simple;
	bh=TNOAHGxj7+NTg6K6QKh62A3AoMpy71MRUbfdaLp+Ubc=;
	h=To:Subject:From:Message-Id:Date; b=EViyesViAlu0txnxJdkiPTGJsjviFWVkqKm+c/SR6m1hpiR/fxR2migyF+kQuf+ufna0GqES4oqOwSqnraNAhVSLxuExPdwtgR5YYjbBsccFkGox8GIBRTvB7/laD3VP4Ku8worX8ueUQXUkG86Bf3SuiQHQCM/t+tAzz7o/Z9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG72oLsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG72oLsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7568C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772024693;
	bh=TNOAHGxj7+NTg6K6QKh62A3AoMpy71MRUbfdaLp+Ubc=;
	h=To:Subject:From:Date:From;
	b=tG72oLsY+QE7lHjpGmMK00gpo1w9KFbAtGSvGbVq2hvYQg6gFnPw/7IVkZFr1PslC
	 N9E/YI7o43RxO0Ydl7MSxxWOZ4wvIRVIcSq4DYZ0FleSS4Kb3LqZBi1yg71wuh5u69
	 HRzL3E6dV2pt4MPFEtJ46p8YCHeshAPDg/cEqH4mhzLce21KHivjjr2nb5FnUoZChn
	 oTGEL/VNyhPztwBcCZxvxfLyIgi7pf7wE3EP6m3cA1jsLlBw4u+FEpEK/Z8kE2l8yc
	 kf+QKsEgXN5O/bTdN/qyrV/vqtnla+0YxfNfSpgL0zqwi5PY861hnHeB6h7tLXH1iR
	 2sYNmjltQlxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BAEFD375D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202469358.12798.357469199881753501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae3d5dc98c70236f7557a8d9bcebfdb1f70377c8e1c52a569fe4115ed91d571
Date: Wed, 25 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772024693
