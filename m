Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9133993
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785814834; cv=none; b=MOXc27S+3rNPk8OkLM/QKF+bcORZTXxwbXuPWccCbv2WehWrk1CHbk8EWsRsHaJaOA4HIQGI1Jfzs6MeEORBv/xgNfGwpb/PtUxHa+tMt0dsM+sQRVhB+jGEV8CZH3onfPg7VjxXfzF0NguUf6fODnClbRAp+BUYe+EiXHVnrRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785814834; c=relaxed/simple;
	bh=fQfEZRpmTGWX069xG8544MNxB0LY1SMrHa8s1SN3K8E=;
	h=To:Subject:From:Message-Id:Date; b=Hm0o/5mdpo+PpyN70G2S5DLGccN/Q1DHRGyqe7kS+aGUtwYs51GwBXQHgEa15jsd5WcdBfUipeOWbwMeAhmJo46+ZtWnD30c03nJkqwNqH9btZ8chkHYNuxu7sLIn+vyMhMi1BH/J7Xe3fGTxfSKgVHyfuCIgR6zomvs4RW6VUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6CiOL15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6CiOL15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96D5C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785814833;
	bh=fQfEZRpmTGWX069xG8544MNxB0LY1SMrHa8s1SN3K8E=;
	h=To:Subject:From:Date:From;
	b=q6CiOL151L/0vOVyIW8HCQQb9WtBt/VU2Japezk3EMwfdmlJMvH/N3rFRX6QLbXPC
	 E6Lxt9BWfQkwYenz9e1+RSZ02Qv87nz0Ab78yD4W44pAyXlE11JyMvhcwFzrMX7OfP
	 0gsZCyMp8Z7JH9ymQrlY0opv0/edNVDu7+8IH5A1XDG7d7ZxEo607jqlPG5BceSjWx
	 YD/fy90DcFylZBLGzmfRkXgb/ednda0MOjRftg+bucl2FT4A/FGdJ5EHTQWzK4Driz
	 /kvPM2QK5X9EmlALTc6tSeRb7jEiiU+DObC8rrmOykgZ+Hf0hXfSepZpfhh+39YZfQ
	 xpXPHGLMha7WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA63AC55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581483368.16703.10666192669050037235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83925b75f16a919e3634f673825df351304ea0adc1085bab9b40fecdd5dc166
Date: Tue, 04 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785814833
