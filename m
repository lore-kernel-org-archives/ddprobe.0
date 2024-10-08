Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD7A1D7E4B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387954; cv=none; b=iEceiChoPdSNBUNrlLHOFDeQvdkUR5RbTlysCZFZWY7PkzmoQyuKlefnhhXMHVu59LZ9iYQOsKH7ui6jAGIgf2d05a+UukMMaEp4j4KSli9Xsh/YmA/yi/3LZM9DextcDehoA2SPjId8IyFA9yDvxf++aZUdbOoUYTQTgKyXfiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387954; c=relaxed/simple;
	bh=O/xx8lJP0n+YHfuHkM5HqSISzbcdmoxSgWoOVqBqDe4=;
	h=To:Subject:From:Message-Id:Date; b=kGI/xftGgwLQugz8YVZFS867X6w2cUCJ1ZbrJdq2caMPuCC7L641s0I3zFCXwFI5YQp1wzakMTmDW4iW2hcSD60GuVb3htKqCoCHVJZiAvcXLDf1Lvh7N+HDnGTmhKwwg8yu8Y/eHS5NqXri3BeD4zWtr+EE3L79ZB/JLlTxsow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxjfx5nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxjfx5nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E5FC4AF09
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728387953;
	bh=O/xx8lJP0n+YHfuHkM5HqSISzbcdmoxSgWoOVqBqDe4=;
	h=To:Subject:From:Date:From;
	b=Uxjfx5nrA2FK6t4U7DfE7frnwNMcCwTXSnOe1RegXqBJRib+H6bfLbLldPalhbkLb
	 UkShcchaK0PLJAX7hRgm0X5r6EuBXweyNPo+CJ0hDIrop/C4J2f2RRc7yHXJMpd6E5
	 b7XJKQ++uPntW95/OoLxIXUhc7gRKc0/wh9vnYHvNZaTGnHkO5Pgly6HJBayYE3YlD
	 pX1lbM7BRhVcs9dvZT3KdGNDYmzMKmbfXo9LsYfCN5epmssbADe9S9Dy0bNwyoNsIF
	 Z64I74sAP7dB4/e7xqy9V6GyLMEGUMOUF2N0RYlQ36sxE2YuT+L5SH02Hi1b2wyAUs
	 tI+VdkZgM/vrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB22CEF15A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838795357.13432.5294221097404867508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9b15723b4b9db283d16d25845bf7f07e515fc5d9d2f24c5ea4f07a9cae2bb2
Date: Tue, 08 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728387953
