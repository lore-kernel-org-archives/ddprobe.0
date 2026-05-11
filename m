Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2B94D2EE6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778533834; cv=none; b=Zu5ZCwcYaPKnyOnvIcwzijAIMXyZ8LlJy6sNjUG2oMkVGxmtLkXzEtmzOpViP+hFshM2iSinjaAf0YX6cVePAnlclvaUTNNcCyZltwA+rhEYkLhzkMDW6gmaw9xkX87ssZy+rMAeaGaaX2jk+aDJvHG93MaL+cmdZxenxbPZVAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778533834; c=relaxed/simple;
	bh=JpDzP6aWsIgzADmLc5dksfqT+KNl+2tOc5Fh8eoAhBQ=;
	h=To:Subject:From:Message-Id:Date; b=eFFn5F7mCu8EHKK/4/pwHz4mseG3K4b4E0X1Jfr3q5QD9J4w5QVpFwxldaMIM8NGE4T+7haqTXitGdVfUnzcXNpHufi+ZKPJ5y+BSARfss5gOSfjnM9QS/RnFbJJ83S9qFZyxBd27djzc9DwWJZo/QY5ZI9gmIdXWsSZQeNCieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOiut3q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOiut3q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA85C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778533833;
	bh=JpDzP6aWsIgzADmLc5dksfqT+KNl+2tOc5Fh8eoAhBQ=;
	h=To:Subject:From:Date:From;
	b=gOiut3q54/H+Wic6QbMuPj8PXYtJ/LODj16ik0HpgKlcosT/YrYATXG0LZEjLxrAt
	 emUi8PH80/W0eS58ak0j31Hu1Bhzyl8xz/vZG2Qd/eMSBBQcjs1np4esULVBP3p/06
	 9eZlX4v1pqrgAf/cwJ2IX5PEQ5hKm8HFrAITfeZEgvwWUBNv3DenT/OBeQdWd2EN9I
	 EjEyGW+ayuVwmd5rODNvjvhjvFnALkesxiG1USxHAzjXUrQQfzSFf4eXYbOHjg0GNH
	 N54yyG2sS57W5fWazkFhIlEwxKyEcRNZ+sq5MlxDyejF9uqG0c3/GBgseKR86C2iF4
	 RsL7hl8bZLAlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E2CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853383368.4644.10246707147456391384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fefd96700aeb777a12441bbcc016fa45a29e47050a1b143531c94eb6489b40
Date: Mon, 11 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778533833
