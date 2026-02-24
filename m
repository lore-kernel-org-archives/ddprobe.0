Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C39C26ED3D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771958694; cv=none; b=QGc0t0tKNgei4HVb+Qfwo0yXzL0rg+WMZZm37GwMMafnJpF7GxBpKP/PyGLPMp3QHjPZAB3nAsXL3vgiRiEU4sdj5Tdzy7HaK5RkJZCv0XVbk5oeek0qgj26PZ2nVbrdvjC9amb8ehwqj0WeGsJNc4q4BwaMkjokwdYogd3/kNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771958694; c=relaxed/simple;
	bh=7JuKnsDcemh0iAQYJeejzkB/yV1V0/xmt2J2W4YyFsg=;
	h=To:Subject:From:Message-Id:Date; b=fFXVyzfd9WaMLeChpoe2BWU9QM1tDqkYckxj1df5t4GmsxJ1AX1qHKkV+aU+VamYJuMqHqO5+fL+/KKZ9iXebVdog5Wlq964ilWPgW9waGgx9RgFdEwvbDSpamY0Z0eYLYYwhLj8CVi3sqyp1Ig/gwA+nC9uGJ6buvz4FyAUJ8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzxhXvqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzxhXvqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03ADC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771958693;
	bh=7JuKnsDcemh0iAQYJeejzkB/yV1V0/xmt2J2W4YyFsg=;
	h=To:Subject:From:Date:From;
	b=HzxhXvqmoApse/fM8KWYSpPFjYnAoJme4A3g5ovZuH2lAKbaMDjR3pTiF9vnKp32o
	 EdACKLg1147wky8paHfx5epz+aKewCX6prA3gHv/CGEddAaY3QrBNcVOAl1Su1d74m
	 w79P9iTwmwmG3VGHa1sqaMTeAa8jzDVSh/aE5psY//1yZi0seZdXtugZr0P2Dcy5kd
	 PdEmamz6BC9iWclgynQsOWFBFh8pD+WKl+9s9IDQVVDWJ53kRZXv7bivjl7BhL4R4z
	 ecJLjZaqliu9DcPJ5q4Rn/+s8h48URTDLcbCp9LWfHlQjrve2Uj5OBGKvwKUMcspyr
	 Mjaw/nkvxcv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BAFF4BB75
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195869359.16997.7109332278158994065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332b95c7ee1d9d9110a5befd2f177cc3f98acc20728fc47a7df96c06d16e8ed1
Date: Tue, 24 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771958693
