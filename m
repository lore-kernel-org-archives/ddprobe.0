Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226BC277CBC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757483994; cv=none; b=kMy/E0CbJ876gn8RkiSjyzKaS4QlS40wU7enq1LS5+S11Ldtoip35cBOW6BM+QVIqZRUQjLMBH0ypbW/eSr+X5NdjCoPapVmPhQAEJ8drgH7ZvxNHAoXs7VUd2VuxCfFTnznPw2scqaUpFBnKs8YgEj3uUwPSnOuk8Ny6u4j9FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757483994; c=relaxed/simple;
	bh=VYoMRw5F6+hdZErMJSZUim+LXW+xnXMF1aZh0TMa0Jg=;
	h=To:Subject:From:Message-Id:Date; b=PvSXWYMLGv3SC0cBDVCBw7HxYnY/m6dy3F2Y/bvnwN72H0PWmhDOwmsUn9GWCXIfmMuuQlFSc61NahnqcSNX2W5PYwB792R0jcAZIYWhertE2F3QCGmsaU0QEiFywSIh8YkVJJxxCNh45ibLCkYb7+cUIhbTnLPG78m+fhn1veM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuYZF2E5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuYZF2E5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F74C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757483993;
	bh=VYoMRw5F6+hdZErMJSZUim+LXW+xnXMF1aZh0TMa0Jg=;
	h=To:Subject:From:Date:From;
	b=AuYZF2E5Nehs15Nb489nS3hPk1kPjFT27cRYyYtww0Quxy31BUT1cDCYaKTHRElF7
	 My4mkt6CsX+ab2UVBCIyokwdxCnf+PoucJGZD9U5qIryC7581Md/dUEsWVjlAHzjEp
	 SrvTMJqKVpY0qBBnahWEK/VAw3Th0Xu3RH+og5uQL7REmaRXt33bk9cU8iAC0/nFts
	 MePFF6L5fwwKFtLl7SYmE7ovy+AH7TrVGJXX4dxXzsu0+kvQhbssZfRJ+/IXxG10Vy
	 9CmPwu6nqJT8w3yo0bqS+zeD+sPY0KUK85Hbl2jjwlSA1BMYitt/jisyw2Ng5/svxs
	 Mprka6zqEFoEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D8CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748399357.26543.7166998668371121739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a0e4f61aa40f6f5ec2eb453262841bc7f61d23cc871cdc41bdea8d2cb6c0d5
Date: Wed, 10 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757483993
