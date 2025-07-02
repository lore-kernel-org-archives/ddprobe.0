Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9922DCBE3
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751482794; cv=none; b=s5GIQuHPsWQDeC+Loh9eB0XmhqKOu3L282CnIFg5Ouwmf6nnvjhbVc/w/3KP5QJzAns4SlopvrMzwLXRONpnIO9d7qqfnfYamUFCugeFQiBdR+cLt756NGERa7BD4IKNmBlYQxKHCWm7Q/d7tL2/Y4g4dIRejD5tIY+WWSEwOQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751482794; c=relaxed/simple;
	bh=U7fwAjURql/bLszcq1P+GpbfC3cfmzshyB17YF2Ay00=;
	h=To:Subject:From:Message-Id:Date; b=Hq6O+452KLVVbpqSY9YY1yu+7pxSMV+oynRUtxIJ8u9/6KaaJ1mzCKHNZjAXRTo/X5SisWPIQCZREhbI77rjHEQV76tIwtf/EO0vcUPE1jaaOf0ioOYlFpxYwDS3/YiDi9w5Q3P2lAqL2QFBWgT26IQZR1coUXImZ3Ga0AmPs8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQuwRsX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQuwRsX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 955FCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751482793;
	bh=U7fwAjURql/bLszcq1P+GpbfC3cfmzshyB17YF2Ay00=;
	h=To:Subject:From:Date:From;
	b=FQuwRsX9neJsrBGl7b8i6c8PLqxwGtdqT512W2TJFUuf+T82lQcBQBAZk8SUqNSwy
	 CZgfDHlYgfKjIogFVTTCXd54LKW1J95McuV9glt3blwkEhnLJqvWCXKkQEiWrRjyu2
	 S0C5Gg7SAUVYH6raeBtcgLdsM4u8vCSkqHZNFMH6oF72+Uo5p5lDzaV/oQjeEW8Huh
	 amPJXLg4Sfmlm5QJ4uXn4UgRoKnctPwdo7HDGuhzVtb1DxD7T3kcr8bFBiFKzzJ0Ic
	 4oC1A4Z3LYlaYgLHkJOBse38HwEpXOGPnN7H6FBhwO1A7IfBXSCetjLtMyNv/iqZTe
	 x4IbO02xDLm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC85C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148279357.3809.18324884585374756466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce001b52b7ab99c24e47a70cfd77a07bbb13ec0fb9318d9c423e1426925ec6bd
Date: Wed, 02 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751482793
