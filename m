Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3718D1E51E1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748327394; cv=none; b=Yf0OPQONxduAcp2OBqPPREoINnHphfTkOFCdXB57pscxIcqXZ2K7D5yFesrr0bbW/GEDUmDqBiJxjkcS8oMCi5bvP3E9UhWcUuJJUnjW62SGP7wPnnGmgU2uAY1dciMxLmSPOFNdNyhZtmAqV5NQB+DoS4BctPlnrgxZ62xPEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748327394; c=relaxed/simple;
	bh=A/27NWtst6Y54EY+s/5aX30LjiHX7Ug170fj2h2t58I=;
	h=To:Subject:From:Message-Id:Date; b=ZqwFcVZ2J9Sb7O2sNE//7ilOUN+pddn3r/yDMX8xDWuFPDj+QEb25zLr8S9fv8gCxQQc0WTPcpuAm+i096Mq4D1BaKVuC8bpTZrTaCME6wwls/H3fRBZhzGCoQsSCzg3TrYB54ttypGYuHF44UnT216WABfIhPzrJ7qsmrmghYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIVV6+oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIVV6+oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D180C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748327393;
	bh=A/27NWtst6Y54EY+s/5aX30LjiHX7Ug170fj2h2t58I=;
	h=To:Subject:From:Date:From;
	b=PIVV6+oIcqBqUkOXMCrYcWwK9f6uu48yuTNQsdM4TAXFG847BHq8RKTgE/FYFQIQq
	 wTAZgRNHCTnXwsPb7DgOFXzQzmQNArnP290V3WirQznUhj3ZTmEBMZ7LGh3MHYTZyf
	 0v8BwkdLaPCu/sBzJtkHIdj06hCoRuDQKYWRnaifF3WsoI6KvGpa1JK2hAqtdxt28t
	 bPhtg5k0VsIkxGz93FHG4Wl+JxlGZdBp0PUw/agHfJx2qY/A+I4uNDVQCxVNqKdIaB
	 nPk3e9eZo3314dnDk7jAJaysbr5QDZ4tDI6D0glhSLlcU1zF0Gzb7Dhk71F2MKTEj5
	 GVFLErL3SHhzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE12C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832739357.10574.10439145817006313181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d549e893bd48cb6ec3510e85516cb6ab344ab6b6e0976fe74a346cb7a07ea0b4
Date: Tue, 27 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748327393
