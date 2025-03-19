Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292DA39AD6
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742401794; cv=none; b=vAX7+dTztdPyy7Pk7a96ftVtvvt67AMpEAgkhhOvcyOHbchwYoXr6WUdGNXYBmyWvwrNuqcjgMrPVMC8pkqKA/NaoQE0p9IIplx9qYMQ2vFyYymSdfuhDfjORKbMhduMHFM98Q14pcsaw7M6HZG3mMHNHwz+4MrdtgxYyxwB5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742401794; c=relaxed/simple;
	bh=nwNsDpL57fX4BhMHVZ3DwODyEGfzG0IEFA42mjPIO9I=;
	h=To:Subject:From:Message-Id:Date; b=gLEQN6TXu+iNoehNu9BQGOXylQy5xl/bthIKTDWfH3CcBs17+Ojb2Xq+QiVTKj+vKXQZzeIajitWqUNFBTOaS532Ep4JE0Q8ds/5jSOrg35SJlQFcrRz58zolc0Zg3Q3cKtn00pTeidUs/8RHR4m8fqnrPCAkg0rEItFYnAnV1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUj5d4XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUj5d4XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742401793;
	bh=nwNsDpL57fX4BhMHVZ3DwODyEGfzG0IEFA42mjPIO9I=;
	h=To:Subject:From:Date:From;
	b=LUj5d4XWgyMPwlKf1jp57VNqz+Bn8Kojv8jbf5PiT+3fayh5CXt3fnQfuCOotgoFz
	 KLb0iBGq56zXzfAwyGSw0Ns9mxtLwk+Q/5eV+ShSsHfh8YuZ7nxwz2QcwFFbC6othj
	 04SDN01h3ASm7rRRZjFOD5vSgN9dFs9xmHWAZu/ujrAYtoxomctPnH9pS7NFY/US8q
	 QDsqvmAV3SGOssEqcwpOpO/7rJ7qJzpQYaEDl7ALtG1i/xOay8EfJzMauRPyykC4HR
	 ZH+sj6ZcFfVwdN1GoktFrIEFBYAEfylm0CIDmniZmB97l8YlGkqAlZmCON+2tpfWfK
	 S24569bcQkHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96885C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240179360.29319.5411974410436677251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de701491714a8b534bd047dd299593c1ff02fa59e669ffba3bde093562478fd4
Date: Wed, 19 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742401793
