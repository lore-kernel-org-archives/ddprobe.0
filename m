Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9C2DB783
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770062634; cv=none; b=gBqHfYbLUaE6WtcxPknSQlm1z8eRCnukWKK0xkzYKWbeAUINyE8jrkvt6qPYH07ldePwaMc8zYGI0xcN7YP1oEqe/PjzOvFNod2V+rrPkNhChCob/1QyYvthPZGDzCz2XljsYJHeP58jFvG1mKzeY/SWwA8I4Tr2hDx5QlJ0Pa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770062634; c=relaxed/simple;
	bh=aF1QhCkPqFAjR7ouV7i6tNXwh4q4xNdMvEwnpxPTS2w=;
	h=To:Subject:From:Message-Id:Date; b=cTl7wVOtNjd17ViWwqUDeBNeMLodN2Ex2Fuk+scth1+h9DPczB9PqoFORu2LjwXx97nT4BoypdpvPztt+6/u5T9UEXd8rKTshnKlRCvSLO7WgE4ZuuXJVUMNWGWzaJESyMkoPHXgjOOQ0CTC+MjgSL7B2c8PIj0CHRduvHsObtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvJXmB+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvJXmB+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C37C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770062633;
	bh=aF1QhCkPqFAjR7ouV7i6tNXwh4q4xNdMvEwnpxPTS2w=;
	h=To:Subject:From:Date:From;
	b=MvJXmB+7ELanYbiKfWPgJC69WTbvNyPo/9pYsP17P68Jn1ix2xyPgpZIehWvo7B7d
	 Or+vsTnGHfJ7J0yyDluK+1C/L8kSIJ/VzJFC0XeENmRxdBpwkgmqOKFa//xRFUCc9s
	 S27kinJ4TikLhx5DMTAVFWYeQRjIwWVOGfZtdxkoB6smNIUSXIXmk985PXqqTJtEVu
	 0/VdzufsQon26Dk1ES9ZWEXRyr0Sh8cF6oGlsAuWVtkTisb3SNDarj2i7X+UaD8tX9
	 rRvufUt6Iqh7L8xVw8icKdT3mT+uipTwxnrycIaeGgNPBLc4uAEoSHttQb1Y8zzO5E
	 WRbcByFHkWb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92483E7FDCC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006263358.18095.14940168009718126160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6731bd5c7b803175d78b788866bb5df5b8f613731505202b7f89da70c47b28
Date: Mon, 02 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770062633
