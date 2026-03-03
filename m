Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3078437C913
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567694; cv=none; b=BzCOz8vBVg0K8gkcWBlAMFM96j3vd5FRZDMNhnrWKoOcNUWyrQn4kMim8M/S6L1V3PzOHv5lrRefC6oy9S4QdbVlWJTx/+BLVOyda2PCqs2ypjKHpCj4e3J1/dApal6NsO31PnKReqAjL5LLlyvIsMW4xfAY1iezLim1Rozb3yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567694; c=relaxed/simple;
	bh=SK9PTmLJx8pejbrLqFtwSzqqpXyL/XlP5MoGqwGRPZo=;
	h=To:Subject:From:Message-Id:Date; b=uuTvYixwyotp/f1HlBp+FWcfypwjPHcl6cfv7OwMJ47iSHSE3UURRAU71AdC1jzRofHLi5U9DILQ2BQt8bPeFIbP9wHidXgcb1NcgdbsVoG5tNrZsx6+HdCKxeNrJmabW1MpmmWpHm8YYByu1BfJKj1RAv7XO04RctDNOodv6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPisq4zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPisq4zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4ACC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567693;
	bh=SK9PTmLJx8pejbrLqFtwSzqqpXyL/XlP5MoGqwGRPZo=;
	h=To:Subject:From:Date:From;
	b=aPisq4zvfgILNmyLt6dMElvcT5xKJbVMP5zTZ6F+W9SFDOQE3g02xDdfcjvrpBXBS
	 5o0NjeIf26ACpfmBMzKh1ydYum/HXwOTjsS/kmr8/5hlXkRYpB9EBpRa2XwRkEbIr5
	 NGV2gk77OMh9/o+77cWVbwDENHtc38DRr2Mga2fDZXfDXvrSDmE8s0XUE+0m3rh8mZ
	 JyrzvJRIRs3+NXzQpHD47G8/HwdrEh+O4wz/ix+MAlnJPdxZSHc/6jI6CjtUlL+dTJ
	 1TI3UE5a8Gkh4pUCF7G5h2rvKTab2sPySCla+UrQ4g+ZiZ1btLbNfaWw9vguV3oCcb
	 UPVOP4blrOibQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1967EDEBEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256769361.3726.18252804898222037276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a9eed7a7fbcc1c063281e670c5f6ec8e99d1ef8edf953da844223dadbf4dd7
Date: Tue, 03 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772567693
