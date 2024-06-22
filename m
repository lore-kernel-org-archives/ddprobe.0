Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5374F4436
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719042743; cv=none; b=PhYgLr+eOhme6C0/RSG7Pc/kNoKgYXDPD0KJoxF7hNkETr1x+ficfPYZ0kVG7+ZihCLdf4ZTBRVyDt1uk+O80DcMXW2O7B5chn0CWktHkGuDWojM8QHRmUakE0XGyuhG2tbWD3wqjJ1HbWBdwMU/mnbdof5oQAf07tJrwDTOBsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719042743; c=relaxed/simple;
	bh=hXCfR+fZDyAQhSoH1xAclPjlCVJgMhDxry2f4VfvIII=;
	h=To:Subject:From:Message-Id:Date; b=ksuzJVcsnOWFN/C4hpSlUWgZq+DfnxUP8End3YSh4t2+UD+euNgmv1XMqmvLapgusvJs/L8NMI23KWss/aar9EumaRwgdXlnJc1OWsPpbwnyZhC4MwjPVio1BqCQcibBiTx+dVtZ2S0KFXY8j+qWy/c+ZbTdZJS20lKbhWI2DLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnH2D0FZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnH2D0FZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7969C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719042742;
	bh=hXCfR+fZDyAQhSoH1xAclPjlCVJgMhDxry2f4VfvIII=;
	h=To:Subject:From:Date:From;
	b=CnH2D0FZNTvA7LArGGdDs9PWh0AuK2E+B5DD3xy0UOmb5hve2ZLIawsX3GbVQVFrQ
	 OGVG7Qi9zUhW5wheCCMWRReW919R23yBRkO+fJ9YdiLptj4QriF7huEU9We2ucif9I
	 uXeX1jJ3IvFA3FO/DTFPMHfjWT28TJVnposQ3FDw8pfeeUh7cqplrBMStcE0azPMpp
	 HnuDgtwf938YtOYn+SvvMiFsNWRIx2O15wiENvibyfH0WNDLbNY3xw/5/BYnEz/rDr
	 j6DXZebOZ7TuRDq5QmjGr/QG0sfOtM67HpwmM3Yh2YoHugHTYkJSXA38jYpSMYjgMG
	 p9OyQUMYgNGbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A2CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904274277.8859.1970994156082895894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2eff01456a5cd8a6cc31b942d73ff3f0496689812817086d898760c804bee0
Date: Sat, 22 Jun 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719042742
