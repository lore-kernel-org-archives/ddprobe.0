Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEBC18FC80
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736505354; cv=none; b=joUqJlMW+WFumRuEGK6B3SLLzhcHU16KoxQB/InIICwdNZzsHVWk+NPI+JAXn3yvTh5WuGsUdPPTuZwWD6EjjkGhsuz/Cn2gRXlqG4Y97mzxYP1VqweVJdUqJt3z7N1gUfGjP8ciVUnmFAzh0UJsN11Z9Fo0x1BX+FN2SlJzZv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736505354; c=relaxed/simple;
	bh=jtOrnVS7yUZEup5tZo/hdIyLXAhC7h1Zwg+GpT3H0CQ=;
	h=To:Subject:From:Message-Id:Date; b=I7wSBBl3tXyixviTiEBeY/+cJL+xThtJPMVassToFHQ2Zi1C6rNZdXvYft8Z2WEh16GoVNxEToVmzWyDn+qIklpHBjlEFzj36A4vjD0JXa51su8+Ng5VZuS1JwiX/Vl/cNlX6ISkt3fSXQwt90Wp/k5NoIK0spAwe06tNkZdPts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxRWudQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxRWudQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5FDC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736505353;
	bh=jtOrnVS7yUZEup5tZo/hdIyLXAhC7h1Zwg+GpT3H0CQ=;
	h=To:Subject:From:Date:From;
	b=ZxRWudQtRD7naLg8ApxOXuUO/H4FNvtONzJKN4imU4SMlvcquMEDyijc7w78uXAHm
	 Fj6KletAcO6/PmGRwmXeocaz0TmdqKcoxwUJHIL03zGRJI+aWj32SLXKb93R7RHHbI
	 IO5YWT4/3qL5HIflMkQKS+g7nOA5Wey5KQVu7kArrBegL0LAtaDM+djR2AzNbTTm9w
	 bl1ZuduNNqxQcFd1IVnr/ytX91GXpHuZA8ZCmUEYaO29ALtT/F7ru8riEdWMq8DCV8
	 5z8EsGwpHFCXFf0wWUDviA+nujD2/upKMP/8z8s6U+bdWbGuRx1Gedagga2zLSVqi+
	 vEXl1Q3RZqnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98536E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650535360.11094.2598208441828273280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da363183ed4de88867c641899e9844f16271686aa28c61ce6aae38d37ae7fac7
Date: Fri, 10 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736505353
