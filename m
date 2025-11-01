Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4841A28C869
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762032594; cv=none; b=Seiu776EzEGWvqh0k5ZctPHuR31aq6rUvZ2xF7G+jzXlvgAPOexjFLva7n8Ec/pw1fwoonrnZ+2SOzd8sFEv+9HkmDMbvwVZv6YDH5RTm4HeDEjtKMeF8cd5N6R5PBhYLbVOuysAGPoIjHeZVshiLW0SmWRdZo8v9XLmOmVi54c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762032594; c=relaxed/simple;
	bh=w3pcKaaBzdw3Qd+C6AE7SiN0qP+HTR5ea1HOUG+aq8g=;
	h=To:Subject:From:Message-Id:Date; b=DSiBYlYxNtaQ8ukISUpMIuw+s+LX0CgsErEBib4Z6L4zK4kSUSPZzrh77ZMrS7RxmKAx8e7xIzzsdHoyOI4xzFXZVGR3cBbgKH+vrTgAc/SPV/07WuXOXovdvoU73hSgasLoxHMo1bpZcCP68NNvSHqf0C1y63y7dDAqq1nAdiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuZo8e/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuZo8e/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1364C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762032593;
	bh=w3pcKaaBzdw3Qd+C6AE7SiN0qP+HTR5ea1HOUG+aq8g=;
	h=To:Subject:From:Date:From;
	b=AuZo8e/xntxtYYDrx73dVpO/HI9fE0cTg2qI4OKWV1lW4p1AQmojzilUhrpze35mF
	 D8NcwgSfZkcPcA6WMrAJ3IlEYo85/Zuh2BWSPlTcYnVmZ2TBsh50cW+oTUGwPUxQ4b
	 MQE1+4j9rzVK/oGQ2nDJTLCqzZDU032TaXgN6fkWDDA1evJoKh5GSK12J8UTmgbPwC
	 VxcYh6aEDRlYgYlFdnfj39syILYDRL+69cuO2jsfk4GvELDY858OkWCgycCXYiemuC
	 EvmqLrKHfTKd/x87RtWSRwjnlR7F096lKkA+6oT2Qc3CIkkNAeoBBZeskTGmHfukRI
	 mDf5whQDIdR1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9981BCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203259360.13273.4321415273547337602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1948b2f0e1b329fbc6dc80e7bd9e4f3a09f81f9f6b527be56c24cbdecb73fb30
Date: Sat, 01 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762032593
