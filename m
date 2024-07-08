Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B71333993
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720480583; cv=none; b=bRszbQETLPQUUK42cScpj1XEAV22du24bl0OommioIk+NUjA7zchfBrSdlC3KLuOt2/aKBw4gDa6vRDrfKpAi3Qz+SXyHu3oANMvT5tQfGqzPtTf+bVWl7e5IE6LwQlt9Bd1WI3pJYWFPZoTDpEQXHwr5TtB2f0ZAvvV7s1Of/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720480583; c=relaxed/simple;
	bh=mk7tF+TGU5RkAm7+hJBvTDik53LxITEegRBw7VVDaYQ=;
	h=To:Subject:From:Message-Id:Date; b=aAkyukwV06eTZjTh3aYH4smvCk0605HrffPymdguv8u/hOYEYKT6bpYOibPXHFk5QldDDZ97qWzz9szKp1iXQKgdLqzubmDodvtUXVCL2P0yrW/nAh81vY0bKcx6WhQtemkzbBUTPO6bYrxGsqG97Z8mzQ1wXiqtDQ9/qqnBnx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+IXg0F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+IXg0F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8742C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720480582;
	bh=mk7tF+TGU5RkAm7+hJBvTDik53LxITEegRBw7VVDaYQ=;
	h=To:Subject:From:Date:From;
	b=l+IXg0F8q4qCOXXSlAkFpn0g0r3P67Qnc3EoupGIZiaZpBCSZ3XstrbzJFyEJW6bB
	 KyBzwHwDy0FzcLhHrr/dMWKnFmTgj7qGd/QvsyFs3GAQg/jrurXyNe+79x4dQxcd5O
	 Ik6wxn8Nl/kqNxdF5nJ4KG8oxawFZo17MyX9GFYpVWbQ4n0skUNiiOQO+IslV0au/7
	 5IbVtpjC5SpxjtlKSpdYFVl1qdBdzSccpAJBstx8mhkt2oWZMhs200VICNCByV/VId
	 Pp4ekoZMt6Kl07QGoTExUctMhzHDeHyA6Ug0iRGzSDA+7YIQMK3LArQAJyE9rkjVhh
	 thZkCqdFS4rmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70F7C3DA45
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048058286.7343.4558891322746410858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91270654f41b8bd144eddbaea3745c91d33c1061a50ef68857283f379e6c9ff
Date: Mon, 08 Jul 2024 23:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720480582
