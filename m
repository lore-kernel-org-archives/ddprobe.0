Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD03AF660
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774332894; cv=none; b=U9gZLrGycim30ochpHfgeh3VbYoWzD1109TdcdW7HucCXyU051wYx+WUrdmOAPfcl9YmaXiCXQLFw9S8Gffsi/D+6XhCOszTOBCg1AzX0+jykIN6rQOwuZHrsehljAaz9/Kfkll2fMfEolGAE4s6U8nMqJhP0Pt/qUX8rKbL2tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774332894; c=relaxed/simple;
	bh=kImdFhuSSVZQnJ6DkYfMYzkIgRxc2k9tXXgnUb6ib5Y=;
	h=To:Subject:From:Message-Id:Date; b=CYCuvfnxM+0MCRBURNV2r/GjJu7H2gu8PvT77CVzQQT+OYudM8/Pokv2tdhv7+nKpP5bWBj32nrVIM4ROE7GadKWjTRHONu7UWQuoUKbXkz9ogFpl0xZot3rJWVYyjnWzNvQ1fefuv0jTcPGwt0n+0NQMLBm3V45RPwcT4ht6wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsMJyROF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsMJyROF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F8C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774332893;
	bh=kImdFhuSSVZQnJ6DkYfMYzkIgRxc2k9tXXgnUb6ib5Y=;
	h=To:Subject:From:Date:From;
	b=nsMJyROFrjDq0g+vPJCIWVM3F/ypYAGg3hzG/XyiUE+jlAoTsPwgB943rJdQB7BJi
	 9BBESt5XAfxy7+pwKxht8mRu6+r6F8mYz3dQAh2E5BDd1lnKwwGQ1ewWienKSE3DZW
	 QqxBv/dv7Q69oGDWMgBF/HbkaCj8FEBo+M9s41rgTkQquvJkfl0nbziIQPzOtKDBcf
	 FrMqQaaw6wYh2mT9yTZMIHVBDzgTbPi5xscikmYbe9CzrJzdGtwiKyxJpwUsFfgjCn
	 bf2LNjF+HGmJ1pEUxbXy76GCxYk00Y9SC1wK5KCuFtgxnQImionSMl8RbDpjMra8bL
	 HvtZti1xTNAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C43F532E4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433289359.6951.4653268236629263209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd6abae2010016b32ec698e64427a883af6fec4f1518aef180c2ffb07df2ca6
Date: Tue, 24 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774332893
