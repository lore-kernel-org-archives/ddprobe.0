Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75AA366DCE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767977033; cv=none; b=jxiCAMzhbj4Ibf/O/HWZRlvbIbImpyky2iP/s4U8EFhnnjk1YWf1B+KtZkivXTHHm60gk6vtOsUdu5kRjo9gd+Qwnc7b9DRoA4vfFd+KFWaHblgdauyNfCWF4E3plbtwdRVf3Y4ZNI+ZaMCPwjgK1PpT5kDuqYa01GZeyKjTkvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767977033; c=relaxed/simple;
	bh=C7RxxsSRopBE2tBCofJb0rOSA4MJRSWbkB8kW/KbWJY=;
	h=To:Subject:From:Message-Id:Date; b=BZNvUq1raD2Ax+b2hZLjT+2Zuc7gNIhzH7qRTIM9HZlYUU7RRyH9IYGXujTXv7W1HmST7kJCzgKh9hjw8UbbTBYeAnBp41q46vjfHZJDn//isMlDXnqMJZ7DM00yi2VXz5q/YO83TDqpi4BQTkiXMQvnzY5nseDXnpbEXxXDV3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhvbKHSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhvbKHSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767977033;
	bh=C7RxxsSRopBE2tBCofJb0rOSA4MJRSWbkB8kW/KbWJY=;
	h=To:Subject:From:Date:From;
	b=HhvbKHSianYweOuQVcVmnDPDIR96Y0EVCRlssOFMVMZiCn2RAPqLXX+GzkpbCYgVo
	 XyTdGiC6U0VUPQxcv/hlr1Jn8m7u0AfYXDXpywTHF0flNh6crGcisM6a2U0DctYVw3
	 nF6/TrUoJmbrZlPNajD16AMhPyNUSaCDmVbrDEqYJHPCFWxkklYKAzZSgIykCiUmdH
	 l80tVExmMb30CN5ETkpj2FVgJy7jbq4BT63Mv46zMX0fnF1wiZx7OW40X/FVL6NQBw
	 rJWabf7v66Dq++iqiy63mkq1TuqiWNDW9IWEd+ZeEKgZH0brnHAYTl2uv/FYaEnFFL
	 NX8HqLXRW2BOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B073D26D75
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797703361.8676.3419569421110685663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e27fe7724a2fd79564b7b5916fa5367777908ef962b2c35922b4758633dc3aa
Date: Fri, 09 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767977033
