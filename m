Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8CD3793B3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776276454; cv=none; b=IGpTMb/lObj9RoutLKZZ8FW1HPtRh//3esHYb2GI2v3o8I9SIYcLc1f/f3WpFiP8lgO/npsdh8eTXZE4ypZ6lfLGQ7QXW0TQzhSZ3gO4/uqrCSNbgxMp7VWB3JTO2QxG1eVqs8p72Tk3jyL7GZi9KeM/lTP122NY8XlDRatKJIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776276454; c=relaxed/simple;
	bh=VKnBk5vaJQt+zKYVf6Z5DioJtxHaUVNlXcoFm3EhjKc=;
	h=To:Subject:From:Message-Id:Date; b=j5g7nV5GcwnMFGDm2t5qvDZ2Q6ECLv+bXBPOYN6+GsnIvJOHMGKBI/eqHmKC1Zv6ltac/iMRRbPDNG5raEqpS1sZ9jZxeqpecUhTuD5uRoW37VcYrZ8PEsV9Ci6n4nySz2O4/avP1RGUGiZTPfEgXML/1BHMEdw3aEpZd5FBwrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXjz2yxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXjz2yxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA20C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776276453;
	bh=VKnBk5vaJQt+zKYVf6Z5DioJtxHaUVNlXcoFm3EhjKc=;
	h=To:Subject:From:Date:From;
	b=ZXjz2yxsgT16uDSannAqKU5XqXtyjZ3aUzaeTclXuICnFe21YB2RAuSj39Xe2wvK1
	 YWd1SVtf6lU6xCvQLh5QjLZVrdL/nbUbWRlGwL+QMxkWPoTyNHDEPROvpU4Jf7+FjD
	 yB+qXYEaP4K6vPjb8dDuSYmyTUCEkQnRCMnfUAP9bSKNXjLkFCwjKuZDMSIkG544YV
	 m23xue1unbAg8+p0lqxzieqRAXb7F8qsAuzTvzbOoqoT4UP1Myq7mFcDHbe5Yu+xlm
	 S5nWrCaiEp0v94bCk53gyHBeqqS0qrGjg+nTGZxpjHhkY626QzFTX+GYPFh2ZtjqEl
	 cZktFAB1F1MRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB554F4210B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627645369.22521.16304896112298210922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4414dc2a1ff89e72121c849a86d4b01588848385292c2a6275799ed72e840d
Date: Wed, 15 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776276453
