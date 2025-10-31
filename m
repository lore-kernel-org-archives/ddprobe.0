Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17070222568
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761892794; cv=none; b=orUSNYVp6NUtfRS3LCYWvrb2pIrwouK32huQo9bBCnKCz8WojMuVU7sHTupnvPl484kBgRgI+MPwl0CB6QiCmSp8LsKhM0Bv/IiJb4iN+p92p+RU3Mm66srNTEdoDs5+FgwbCpeXvskGyDn4Gax22dG8hXOIJHFdit2KjhJ7iww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761892794; c=relaxed/simple;
	bh=Y+a+Ng3tt/yzZuWgwz9pMR18hknHRxH8xt3/YB5tNU4=;
	h=To:Subject:From:Message-Id:Date; b=o4H0sNaGsLpAKnTicj6CBUzuruGvjhGpXhWyGoF0rM80HzUpZoIAt6f26f4iMPAXuSwY4OzVV4yyG9CKujTyJu7AmdctLz70nomTLJZnnZW2JLgm6e8/6Mai5T9GQUkt5JHfWoBunTbc88guYVJzbmzJ3EsfViu7WNIrZiBnRW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcq3eCqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcq3eCqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFC3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761892793;
	bh=Y+a+Ng3tt/yzZuWgwz9pMR18hknHRxH8xt3/YB5tNU4=;
	h=To:Subject:From:Date:From;
	b=rcq3eCqQq16nhxkmE63eM1AS/Gv8BjsDRCIe8ZycxNEgq+kgSo9ypc8rYiSO0+RTd
	 skoxdtdmvKVGXdNhC9gwWC+69RKRE9bi5s5bj1EMBM4s/rBckTtxTELr3ovqwNOqP9
	 ZSR9Jn8yf+4iU2ZW2tB2z29XI/mjjE4Kg3xC2YR8afLiL+l+7YQ4uSoaAWmY0xsZLt
	 SBh5HghTNmI7Nwas1jERjLKC3zP0VGWkMFbiPXbn/Y1pzt38tW0yHvetVn2jvZH95j
	 eT3eyR4PbUVHVOFWqEqoo5D4FWKeP0Lakf+sO57+IK69fM6PVSZ0DR5Xy4WwxXJV+X
	 LymDlPzW+vClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04A9CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189279361.4549.5543133528957291088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9360ec9638e42d02699d22adb057715060f8d3a217648deedbefd6b2ff1c68cc
Date: Fri, 31 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761892793
