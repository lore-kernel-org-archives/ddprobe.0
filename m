Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F928827
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735754154; cv=none; b=dv6xQzFtEdpdBxDcle2SoV1Vik14JBHChY84ta1rSyb5Untr3YkV/F+8bP8F1yn8snOSt/0ZqVH8qU0TqatYvtdM/PK7XHhfvVwlgIfBVW3l15GwtoZ8I328GbB13cY9RiNy6TubyOVbGmkTRNiQgLEE4rjJ3vCkDkm0K4OrqK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735754154; c=relaxed/simple;
	bh=MVMKKGIUYKhkKkXqRxTXoKRgOGBCT+53JcAoZ1+5/hU=;
	h=To:Subject:From:Message-Id:Date; b=VCDayCmJ2G34ECWaHNCGK//HZHj9P9yePts/SprBZlqUn0lmdf1Z+l4iuhAJ9Ngbx6tzFZmNO0Z7218aqk2qZzz9jy2rAyArEP+wIR9IF/Tv2L8vX9m5/9tN5GQZP5tmcMOaf5GWAvt5ksBf00QDwh8+Q+ATCQm9ALwAct5uOUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY8e2xJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY8e2xJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8098C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735754153;
	bh=MVMKKGIUYKhkKkXqRxTXoKRgOGBCT+53JcAoZ1+5/hU=;
	h=To:Subject:From:Date:From;
	b=OY8e2xJmELOyEELyBcWBbK43elsPy12BuiWDpxXAfoW9rZ+HKdel94tQMcIFeCYEp
	 CYWcpPdfgGfBd1gzW3+HvB0BdE2bk8VlnZXvssG9B3BUaL/JyOfkr9nRV5ncrkYqSf
	 faD2ZAnGLZUAxhd19JQftICEDUTnYrZ8XOiYVkRqTsIRkoOH+YLgOCsW9RwsXFNCna
	 g2Z+g/cyroNTou7plM4yvb8wj8W9ZCwa0Eh9V8q/WYCJ7SlWh63f0BuP0XTE77jAIT
	 gnEoL5UCpXjZRDZCFYqTzQUHxvqXyoj+0DEaELSczd/jI5Bx8ohEneZSzY0yJMiI4m
	 Tg9eKRg25P04g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FEE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575415359.20032.15939303367402642964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85e58819d45e34400f7e11076470d84cf5ad68419fdbc7cdb381461d1057ae5
Date: Wed, 01 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735754153
