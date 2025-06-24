Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB1922D9ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771194; cv=none; b=mVF73EaPCdz7OUA9/6WIqkUGYOHy33RhjTyMGxerNvfaKVpMN525Nah11ZMEVmpE/GPEPwQHCg8ZtDebqn7ELQUgkKfrp/SdJGCL8SB0lIrc8aiB6ilRlYIYg7QVlYkJ5lIllot/62IQ2Qhj/T1VRNGwYUjuwszdrbXuutzM20A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771194; c=relaxed/simple;
	bh=EvGM2X7pIr2Z4XNN4WIu8yo7/UgTKpGpklVLCBoBxc0=;
	h=To:Subject:From:Message-Id:Date; b=eeXUI7nhDEowno5olbTD2A4mLthCm8nulssCPTPjVaAU0INM4ttaKSA1x1NyWwCI6JpepfG7kgi1KVAfrZ8zFKsTuBYXKcXhhH9GthIlvRTs5uXnrCklUD5dFITJKdcdhCI5T7ctDDUKEWOcbJfhH1ryw6TDWE+DLeIBDph4blU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqV6/xH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqV6/xH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750771193;
	bh=EvGM2X7pIr2Z4XNN4WIu8yo7/UgTKpGpklVLCBoBxc0=;
	h=To:Subject:From:Date:From;
	b=KqV6/xH2M+0vxfFcNO5kUY1jBWbK1GVN48JtH0XTPDNO80VhTbXLbfmIyMliJ9JFf
	 /1ou4GCmxWyp/nsW8O7JR8nymRL7r0qsugPkPN8w0nI+u7gBklY4ZM4bR1o1O4zCcP
	 jvCDhGWuvXpZsAdDhITilJrmtCraXvu3xsv3j0waz8rfXeWvrSf7zdic9j6MV5REye
	 EcRzG9lRc9mplwl851qzOCj5dzXH32eAH+eb0nHB8K5y43RwAA4C6mYRf/TsuJFXz5
	 p9tzMrG0KgzPJ5nFq0lW5Af0fKPrd1tT2eJ7wkin8O8fdOBSYubE/71NYJmytn1QFZ
	 kp0ZXwMGb5R0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208FC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077119357.14481.918336496590923656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159074e7f583525696c4871d51018f423518192e34fb5338ff7ffad8b213efb2
Date: Tue, 24 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750771193
