Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0DE2D541D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749603594; cv=none; b=J6RwMNmrP/INBjZ8GNt8B6gDE1QuwyZ9bv4a8zNR8AtrQxv72p5FODz4iqogPId7vTNYCLvbc/Ix12gqZXg5iY2beEFPf9Hu9iMp2WLShCmf4YZvDb7vIDNhKP2OSEMhTUhEcFqUrk96gz2M1+7YRJ2Q9qgNpyhfEj+mvvJgD3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749603594; c=relaxed/simple;
	bh=UzLgXSfQlMrsQqkqIL+KSyGCtQN0EUHubQz/T9OQWrA=;
	h=To:Subject:From:Message-Id:Date; b=lvvcM8+ziWhDaWSiVzSCg8Hxa/jIz64HJNByc394N8Px40HIb60pIkCr17jB2pHCCvqjgBf/+/PW+krSc55IjfkOG6v6i/CXbiW3Wv/3dRhzZ+Zrel5PLbOZUsVc9YCDWLIu/3+ZC0YtRnQYqe9ZoKVvSohUC6kdx9b4EauwHwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyXw9Zeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyXw9Zeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CEC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749603593;
	bh=UzLgXSfQlMrsQqkqIL+KSyGCtQN0EUHubQz/T9OQWrA=;
	h=To:Subject:From:Date:From;
	b=fyXw9ZeocPxAW5HC35OMd1QPxd/Wqu+oct3Lb3v9SnwH9St3cFaulPV5G2mDSSZ6k
	 lC26vdFD+bDEMG5oqmqytLxDrhq2edt2Glw+5Yqp84+eoK16V08r97p4Y08OVtPIWm
	 TNFLkOy0A2SWiIFSrYfpe+Xi1LViCUCxmilDcrcGtKeyH+fXkG0X4QWfvu6L7KUm10
	 Ym7Xu+zr3ENrR2hkm9M//WAtJSyHn3K3R3I6BwOImBKrdMyHs1j1qBjt1i55EwkvPi
	 GvcdWajOxeEsoBZeEbSZXO7tQFauckeIzcDwTF02EY/0KOXZwGJY5k1Vz8giqOs7dY
	 HafNmVWd8G9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF58C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960359358.31575.17459771341683805478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62112994dc340936ee1d21662881196f08e38358fbf75cf61fe592fcbd26e310
Date: Wed, 11 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749603593
