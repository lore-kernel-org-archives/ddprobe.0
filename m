Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C1535F164
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791528634; cv=none; b=BfsgvEs7Hq9ghAPJJEcM2mj1eMbyesAURbNk35GEQm808IrMpyPtAXE/+hxJpTL1XmdnJol6oGqoGUvewZvX6mUpxhNuqCNkUocoG00RRczYQwmkTiv6dCp27qn3ij7FU2TwcE46PhLJ06vmMWLCjrpLICsTAmtu87gidqsBEX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791528634; c=relaxed/simple;
	bh=57RSNhlkHiR0k4CIZcUXlyhWjy5rUWwj7rG0T4Ju8kw=;
	h=To:Subject:From:Message-Id:Date; b=tBv2fQwdiFq4EZYvz/oECv6rjGz6ZdIlp5i+EahAGpS30Z8eIXLm52qPDIgWG+/g4qXWvGoGLXM+uwp6LHWCiUxSP8Fzk2kh2jgvKZUDFBUcbWb/omBaZL2VRoHK13wz3Lqn55gSVxGg/2cJtGdJNCDozgaNBWC4VxQzeO2pKYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ/9nix5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ/9nix5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0695AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791528634;
	bh=57RSNhlkHiR0k4CIZcUXlyhWjy5rUWwj7rG0T4Ju8kw=;
	h=To:Subject:From:Date:From;
	b=YJ/9nix5QwGZrF82TspUYCc1o3yLMbt2ke4h4+hTXd+8aHu7TPrKJfzCw2sVwt1zT
	 bqNQm5eMlPUrGvw/XAuRCJJI4uOIZa5M0vxe6aOvfrNRo0wD3vmY4uELnF+R21soQa
	 FNR88W1ldu2seM36ioFRH8W8I7LsVeCpk+JWI8UrzdqbcOmBjiq2Wqfi182Y88aciV
	 qBZTSUQ8kx6MGWjnMrcjlNuOpihyBZDtE6WnzcECFmRMgJ0YlNWrs3sNvo7uoHUr1E
	 Y+eY7u36BwORt3NnmRh8tzzzum9Bk4r77TarNEkgix8T9Y2bR61zUfbDPmfdk0jIQq
	 gmjUWyN1rv1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6638CA601A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152863378.32164.15884822791731637160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71c6b44262ddc9cbd55edad90ea7e2d14352286186018a3d45493d021d3b2df
Date: Fri, 09 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791528633
