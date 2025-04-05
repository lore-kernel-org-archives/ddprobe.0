Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED452F36
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743888594; cv=none; b=o3GuNxnHurZOXCkYRF07Yk+0mQ4SdRWD1R2trNF/1iXeV9yPEmWPCKLMb95UEp5kLI//6ZqFK++LLFYwrWT2Mzh9Fhef4/yR2lp9jFEOdtRQt2NIfS72jT9G1FlAaWjWOi8E6833s+ebjTHgoAWchJTnq4VuusmV+Fd+lov4ZSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743888594; c=relaxed/simple;
	bh=Lsjv2XB+FyQ3xBs3WlkjKo9BlDvx1BIntiBG594dCj8=;
	h=To:Subject:From:Message-Id:Date; b=BK4EsEymf4rtmY9PaNN0I0qE5/1XxzEqCd+ki0i5MBnmg81UOHaHfeYjpJoXpRFZZcDHPpLZizHiirdovUQ/4fiGAbuPY8Vp2LNSbJ69Aq7EMjxBdG0SopcMcYxKbVx8sjeK1+HcJFBKy9JQy/VdC9cZcn1PXMeNJY9Mlc1iW/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwH/5nZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwH/5nZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C6FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743888593;
	bh=Lsjv2XB+FyQ3xBs3WlkjKo9BlDvx1BIntiBG594dCj8=;
	h=To:Subject:From:Date:From;
	b=EwH/5nZPbuZWPIfJOpD4wsACZDid3mJFfPl3m3EKvTJ+CoyxVzlfktMsPN/S/t0h8
	 GfWv0AUmx34slyIvE3GnzLRRu0RQaINcB2R2LbbehnV2cF1rh/bmPLEpEUxJ0f8Mgx
	 WdSPRGr34UlFzmSk4EMyohELWIMhbI6jnbJ6SNCmoT2dCGSHNPKlL4ikphFS04Rjof
	 T20cbrquQiEf9NN3JM4inMf50teANmZd2vfmj6RqSlUuzkx3cD5yQ9QBw+b9HN9PFP
	 w1eRwgtPKkkTTcaLsjeSbqsHgFp768twArRUEoyJ/M5pBVgowUM2n1xTyEhRUaFdWc
	 yVXyBCpmX1Ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9714AC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388859358.9100.9201510396858953203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c4bebe3d7e63cb75b795d15243f850e079e7e4ee702d4ff0124cae1986f9aa
Date: Sat, 05 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743888593
