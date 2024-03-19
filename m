Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58667BAE7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710816496; cv=none; b=E+wjW8LIUVel7k3KyuvMCvCMY+zqpk2ocBbcH8G4PeVztQEKs4pKaaiNjJss+Girie77HNT9o/Yw870JNHhnLO3gY90oFtwwGvdpeH7ypQfHaKRbSIQm9ZRJcAAKy0RcSoNZBeljiYoHyDq3WiZNoaJ4p505tSayWNKwF7PnYYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710816496; c=relaxed/simple;
	bh=a1aoCvA1lm8zShmaV/+lXRG59gm+xTi7ELx4vE/2IPc=;
	h=To:Subject:From:Message-Id:Date; b=SgsxFjVbx3xf7QGj0KdiwRXxnCm8MoCHNMOx1HmoNB543+pAGwO4qWJ44fqRp2kxJYU/Gg7/9bJhTk6k++pEveQuoG6TN7i4WLIHSIaA7SrKTdZ8GBlKZpcX/FlnwWxyCpUwPxU6s80jMJSeDkzx0tQnnglW9KvDmmCJCo3+12Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wxo/+qTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wxo/+qTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FD5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710816496;
	bh=a1aoCvA1lm8zShmaV/+lXRG59gm+xTi7ELx4vE/2IPc=;
	h=To:Subject:From:Date:From;
	b=Wxo/+qTqx2znX+zeraAMYK3ZIcTRoVAWPm/TAJvZ0al3b96Q0K+rBu5mtuDcSQU/t
	 2CcCm/g10NW2mCzule0kcWBZk3WKKRFxCnDOMQCULgYeenpy2uzU+2jMQyVqxIm4PV
	 7woLObheeke9cYrbdyxhPHyNNQUXz5v77Fa/Iu8PK5IjZR7y+Hzki73W+HxvLJVruj
	 BlXkhvygNaJYXndtoI0QMRy8Xwp/6UxUpUPVkiSFrYR5oLVHOefuxUljqrej9cTupp
	 IHgJSholTb595UToR3VX50JIhHUMS/nToFMf/9mu24V+qLdKK7T1bcA3OlRpcROxoJ
	 +K/TAZ+0zNrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E252C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171081649637.31460.11917990870360690723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abcacce9dc1799885a532694b37647825ed559863fa112295e8517348fe12c0
Date: Tue, 19 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710816496
