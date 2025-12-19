Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DC72D1914
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165634; cv=none; b=PHyMKc+reQZR0h2Ai+ZbwC/IbLRdySZkeok8B4AwhD28PMU+AKBlVXAJ9/jcsafkG0Um3c5S+WSL/4qgCn5mtmqGHQtqIiPKYMlq0jSe/ceEohoFl82wrCh52mqAD5DrDeIdjRohXFi5NXF7gOIx+EKMTyAgp34VVMoiclS9shg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165634; c=relaxed/simple;
	bh=r0HFJH+3kcbI7Z+ZE9YQxaI0PkFGOAZ15OxUO5MiLYE=;
	h=To:Subject:From:Message-Id:Date; b=FF/WX9nE6KAy0mYwvOH1dNd+0M2c2Vi8YwTAH39TtCG90KDta4T0YvxfPBN5ALpSI9NEJBJ5EE167rKiTcX/qadR6OqEHOSJGpIqXkvWc3YmaFBEbLJmky0i8Lyy/VdEWYAiQYtIqIWIdXtuWQcE6gT+p8oE+MM/dMsEQ9hinI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwcJM4/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwcJM4/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A2C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766165633;
	bh=r0HFJH+3kcbI7Z+ZE9YQxaI0PkFGOAZ15OxUO5MiLYE=;
	h=To:Subject:From:Date:From;
	b=fwcJM4/dQeK8e3npEJctDS1bnxIaEVbHwN6oQ/86RJpFirsWdFX/zKvSJmVZg3OVk
	 K6zOJ7rH2365LFh8m/ZtuV785XYlh3SIwv+FZx+PcAjJuogYLSgFawLRDWvdjpeNBJ
	 dQjYPj39MqgHwv/Tnm3+cDKvuRaToM1RvKeh2tdiQJijiTOYkUdfGh1zbYAHknrUUU
	 5LC7JPQig1fXeuT8T0dH3pkSZX6BHTTkB7OeOxRaCneiONvd/rp1i6BdFaOABjavZ6
	 y4XBAwpwVN/mY673I9aQwbFH7IIvRkofg60D78V2/i8amIgXEnyAYVYeCVUiOL4kc8
	 RCz6+78a3MN+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F83D7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616563358.24314.52465175189776256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b0430501d8b014ade27dcf2318202134d79e77630df827e90c1e003f76f498
Date: Fri, 19 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766165633
