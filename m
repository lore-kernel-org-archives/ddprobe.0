Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D0D57CB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718768963; cv=none; b=NbC78udZdjNiCzOoo6TQKZtyEMLaNWphb9LEtKdEK1CGxsZYlMEsB9mN5w7S4HqcXil5T6eLzpNRX/30MR+bEbq90oGz1Rv0QYjcencwW/E0mru5WXVx37kVab4C/ANSmSjNR5yRLrc4AuoDrHKDMDh9Umg9/ruUgp3bt/8fq+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718768963; c=relaxed/simple;
	bh=gmCwJ23rW73SKumvDo6FwghzuJM6be4JWZetZGDrGa4=;
	h=To:Subject:From:Message-Id:Date; b=sr3YNSHyk4AVGbeXRLOHYfrpSRFZfiiPcg+MypKZUSxhXxl8pSNZtb4Zf/avPPkP6NvDHiBX/g5W8G8xkf4gsuMBbgPwg1GC0n2Bnzan5VHSSs+m3E8WZay7Lhv7SbEM8s0hMKsfZDBeHEh3rEp7pzEnb1uyTl9UStg9dFhURgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO+WdqnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO+WdqnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58D5C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718768962;
	bh=gmCwJ23rW73SKumvDo6FwghzuJM6be4JWZetZGDrGa4=;
	h=To:Subject:From:Date:From;
	b=WO+WdqnLFaMlXtB2dTNosX3V/I0/Pu+D4KxE4P2O/OhVi4WhGUhWko+o75UUWhaaz
	 bi9PplayeaNDUlIhr1dJJVhH5ATn0YBhFoY9/5NrdKU8DG50eJrWF4SHauGnRzOtjj
	 EFy7KFcUmY5ikaSpwONpHJCaG5YU2w1QA85R5lLXz7RWcXS6Jxze/y1GDhxUpuisGh
	 +/LCIJxpeQuVVJ70emk7LiUMTQyoWalaGlU6WcNWuPLgitztm8LfBgIoxDxFW5bOxu
	 4T/d+7uuqAAFApBBTwE4mn4K2kPIMSBhs5pdpTN+eYDMx6KD88JOibyqS6O1AFVm3l
	 WBlBdENk7mLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FB5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876896280.8952.16693488945270839103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58265038c9003124e5b24116293e7762b7b9b3e55497466f42f15ef26ba18ba7
Date: Wed, 19 Jun 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718768962
