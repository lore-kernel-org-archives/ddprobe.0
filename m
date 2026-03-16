Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132C530AD0A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773627894; cv=none; b=aCOPMYl8nWPKjbcHr1Gq/2/CUBvTr97Lh/n2Hb2Mu8uOhJ37bkDfK5Cmh07AiFhMrcv1zE6WhHGkXTmVXyqyCX+ANz2MerJbmdJD8lFpimDCF3SGZ/dkzofRzQ716Ti9v3dIwRmC27iJA0mtGnz6JvxYbI51TcYm1axwtJ4yF84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773627894; c=relaxed/simple;
	bh=rIi1L8/rHbnLIie8ACF8rR0NcK2nmMbFCuiD83OsoK8=;
	h=To:Subject:From:Message-Id:Date; b=jk7gN0uOd6naH0mu0FYQTNEzaK14y75/dYyxX7u620FR5WADXTYzkZD7YbxFY8bh6xCX08JP7FiCSwKEPWFE1KZcjYhHjjYAKqXtMN2Bq+0nLF14s820EnxkMfbkN2n//ZKg4KfXL2DcBVdBzjhq0u3izA6LLuIHm8RtYzyLKyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqBdPAjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqBdPAjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773627893;
	bh=rIi1L8/rHbnLIie8ACF8rR0NcK2nmMbFCuiD83OsoK8=;
	h=To:Subject:From:Date:From;
	b=JqBdPAjQUdbODFtHQMz4IjDooBDoSxeANoyB1pkMI1JsBUkNP8Fgv2stCv44J/0ZM
	 2W57JD17Ub7DzWzZ4H+emEaC27QolenFiPLZO7M+AfqJnE0wR+dqKajVOnIlZ/7h+Q
	 TcDxZRU76lyb8k1B6LR3ejsyFXmzXAQekI4eK54pYYfEKJtNBU9EvqAHc3gA0a+QtC
	 Ql68bSuNfkElmO/v0dd7kNqcNM3eYYU+8gp+aWO+i/uhRjiJ5f5A+tMo3IPC2w1pzm
	 Dhox4XMP9gMyxPDq/7izAxz++cjY3DekBUxeMxSMAwmewboi8ZxTHlgBTIZj+uW8hR
	 iCAZuUqXC2NOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EF30299
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362789357.11566.8388316149025511842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01000954d2866fa228e2f2c14585515928d68e848674340f54146172f12b3471
Date: Mon, 16 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773627893
