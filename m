Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500053C1974
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787211634; cv=none; b=RonqqU7Z6g/3Cw71NtY3bHwE0w4/66y5C1g2vlqPKmIpVw8lK+4MsT3CIb/+TIzi5HcmawS7MJi+2pe/NaSbq1kMkEFdZZZusyqIo8Y9hFLO4Jo/dBMxzTrUbO8snwEsSZCy7Aln/NKUzhDWnuL51/Toq/VPcAyDaBfZKR8HgNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787211634; c=relaxed/simple;
	bh=r/jyx9vJEMHIw9WWlwv2L4hQxZ7o6lb5nCRE/yRJ8ic=;
	h=To:Subject:From:Message-Id:Date; b=b+8dDnS1b4Os4BZzCl0Lb6xJSBT0j/bnhd5QQR8Y+K8W8U2IOaaMmymaKOb9gjLnGr6KgNTykFIx/9/VO+5/uyiNBccADUCIMWEMX0fk9z0lqmyl/d5cXeZQvcoHndaAV3/LkkNm/KvxqZlYeZuGBYqIu1OQsj/PbURYAnstiRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUTyAk9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUTyAk9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7638C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787211633;
	bh=r/jyx9vJEMHIw9WWlwv2L4hQxZ7o6lb5nCRE/yRJ8ic=;
	h=To:Subject:From:Date:From;
	b=mUTyAk9TNvdfD+vXA9ooD77q2/THOnt48InxMVetRXtEUCAURAfSMDisDqVp4n98+
	 PlOfkW7WJ7QLy9jepi0ADyvBabnqelQDFhO5bLYmsQnKTqOaFBIa/Ng6F8fyaApXGE
	 nn973IIXxd5rQG8GMGQDP9bOnnA1jkwKLZ1IbxFpFgtWr05fspyfg/9Ha/YUXEHzyq
	 jvw9INqb5UTeelgRomo2Lnig5SBJxhNe40j4XmAzmySCDclZhx5VEmgnN+2QrL9QTo
	 pwJcNrkBfKKbPe/11ocQMMHG6EUjid557pYIGfWoNUmJN7MqOaEdkV/22TdVXPNPsC
	 mEAp69PnCLbTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF139C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721163370.26187.6165423629516493492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797872c9558dc7372b4c3dcf778ad3d7d1ad68389026858e71643fa03ab8e269
Date: Thu, 20 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787211633
