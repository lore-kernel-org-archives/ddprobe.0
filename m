Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C241DE3BE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748082593; cv=none; b=Ati6KQm3c18ZLc7gK7XLeO2iAQ+2YU2ZCMOH5JyuoNvk0LcdSjEHkUIgL3descCWPqelM8nMAyTUWabMpWAhXzS9EokjhOkfpuEdm0LHCLnnkdTYZP+88asa674cC8LIKBOHni8EtAMusntvM7IIxY9lgrqEmiDo7olcp2XgmYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748082593; c=relaxed/simple;
	bh=dBhsR0nDt2PwqzbvDq1ID82Cc/FeTxsrtXaZBERCwCo=;
	h=To:Subject:From:Message-Id:Date; b=BfuW8sFuFLkY6UqBQSNF+eEB6Gl6rNxwn1VwxAPUdp4hE1T0+BPoh+bKwFsIL2a2ECyuBe2FjRjz1yQ0hyh+GWDbaBgDj3HeXtL4R77I2vVhA1yzAueFDzrr1pECPitIJqptybEuAPrUhlqN0hFfIxbPY5JiZOkEU67pYWCwA3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uv9XoUUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uv9XoUUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B591DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748082593;
	bh=dBhsR0nDt2PwqzbvDq1ID82Cc/FeTxsrtXaZBERCwCo=;
	h=To:Subject:From:Date:From;
	b=Uv9XoUUWnETR9mIvoP9HB2avbMse6ZNOGgTKizuYJGIIoppaHmeJtTUYGTqpaFC5K
	 WAu4OQrcFfRagdUmzIaFaRVF/+sgE1NHYd2yYuE78bx65hP7no7VqdQoiC1hc3atqZ
	 dsEcx3db9/DPX1HxedRycKMnz/LhGpYGEEPDqqR0y7UJo+invi+1J10sqn28gqG5r4
	 w40N0sZQfXfTamxBifezz+57q9QxhndE+OehkFjdLX3ctXkKrGbylPGdIzf1KGvdtP
	 gaYYyIkR3aoMLC1iibW81IypkISjsU4GsqAGwE0rqVFBYxwxi7HVS1hMZMo8U1HNvJ
	 RJp9rDbLB68jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045DC54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808259358.26924.4056514203257779330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7cbbffe74130bb79b75fccae099a85453f97c21cc977585774f286e85fe66a
Date: Sat, 24 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748082593
