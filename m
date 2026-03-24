Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17329384235
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774320894; cv=none; b=oD7bvnmkFRf0asX7LXd5O6wgC2gWXZfg6y+6FaLE9IARfoL++OFoRYv5PHHN1yD/9pvG3TS8mB5MS8IIra5fi/GWthtgCkT2ELkham3WNUOZNVId2seLWxljAF1eNVTYRAsmWQFH4oE6R47T2bpTUjPxwYJX/JrhCPSFyq2v6EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774320894; c=relaxed/simple;
	bh=iuUcJLCeucgZUvkSZAtw9plKBlH+qupEUrOwVtn0Pso=;
	h=To:Subject:From:Message-Id:Date; b=rI4kQCRe71iXa1lOXpoToELMUQ4Lc+ztA69pRfv8UDKhEgfSXClA0o7MwzAq0z6UKJ7pXpEqHbtEuo9difbrYo8yE8WyLfPri7tcgCt1njoHffSJpHGlC7lDoWvTW4O/FxokUFz4stMqz9DinwLcStJPejLGa7iC80H06QeoWac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwMqN3OU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwMqN3OU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FAEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774320893;
	bh=iuUcJLCeucgZUvkSZAtw9plKBlH+qupEUrOwVtn0Pso=;
	h=To:Subject:From:Date:From;
	b=HwMqN3OUgviaSKhelouCOn8/N/Ucw005+BRWH5R/11ELcG9DlSkUhbwzDSwOfqPV8
	 yU8ep50xuqKDfawPFf+sdIDHlzkNotZjHHD/bkQE1ArKvshCd8EyC7VMCZ8+SKpNXV
	 p98vPGmoHEpNXly9nWC/ZDaZMrWw7c++xjy13aOUeWd3KLXDmEk6beGIN3WPblOb6u
	 Eh8p+P0MSlk/cU8zX1t86y/uTgoMHHYSWnfp5hSqLzw9bN3RpMfGvQB4SiDOhR7kUt
	 huXiBlFW/fuLLF4bfamM4ckeCuhaPfqLhHmwJltCn1rkdKEETg3Lk5l2LpIS8zKuhg
	 Z/pp+v8k64L+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E3F532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432089360.19933.15617376287953035494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4268fdbf31cf90ec970e35f39e8fc9b3b23fe5b08ed9caefc6bdafdc209947d
Date: Tue, 24 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774320893
