Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F7C52F62
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720586183; cv=none; b=ZyhW7Nmedb2tBWfSvlU6PGjuiZUXCIEJefgvlxxaohYdHVOC8kPoODogG+EtmkzW1WGqJA9HwP3GT7m2/OyAx/FlufkvbHx/oDP5ZIzDc2px0YM0izfYqVdTZyzIXynT0pBk9byLuS8jhkJ9qLZA17MAG8BxRKzEzbpJD148614=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720586183; c=relaxed/simple;
	bh=AJOf9+faUx8WXzUov1uWSpv4/d7B+91/BfVZ7yuvFYU=;
	h=To:Subject:From:Message-Id:Date; b=YHAn8VBr9TP1lGa6c4oZfqt+3rbObu/y8eIWzMMezuIEXr0WlJaH5/Acg8F/OgodK4STtz0/jcY3P2Fd5Cntn5mV2peR9DcIHMJZ4yH6rJQcBxnu3RlZdPDdI7Jj+2lDhkC8J/YEp/bwJDLdXQOU1zijIDr+x4rWnPi7FTm9tzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR8XNhZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR8XNhZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18B8C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720586182;
	bh=AJOf9+faUx8WXzUov1uWSpv4/d7B+91/BfVZ7yuvFYU=;
	h=To:Subject:From:Date:From;
	b=LR8XNhZ1HrjqRKglNl5GIU1X760ue4FX3XAm1rK/xTE3SIFm6wjpSqAZUEqqg2AkW
	 2HrEcjjVFXdAFpm34n6fLfkLouG5wbNfnswuv4vjaaHhs0xhxVFZSv3sRzzDM50XV3
	 GveAMsTQOqfaevf2+JD+ls0jN8+wk4MjS8UVAr3ZH1qJ+ddnF4kDtjOAsQovdvCmGj
	 u8Cc8TnIlJJ5avwkJigApo+VqaVAczJzlePSWKjSs8Ro65cETqoHABMo2kEvuXTkMF
	 sK0RWVKMFN2StZ/NBASUbxzIrcc2RJWt1BZLzPEo20DoLyZTEjJrz6oE2KYDxaCUHa
	 3O2bjxiIO9/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CD8C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058618282.23983.3369306528571865856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ba7b033c27d91ba008266b79aec9dca285315d74f628c12c61e464937fa19b
Date: Wed, 10 Jul 2024 04:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720586182
