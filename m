Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1591F21B192
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775508934; cv=none; b=Q3YvaZPSeE8IkVXxSNly7+GpEy/GnK9yPP/2wLXHdRucQxVw587wxqcR+tPPKpCpIgqrM5LzZ5KN79lYkgX8e1Scdp6LLTk76+fkh5y5iXzcKWtdjVVws1Ru0AMdSpA/Z3tmJCDwKpDIbWL6baumW0O5yCVW/MKKDBN5NvKfH90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775508934; c=relaxed/simple;
	bh=rusWsUrvGf9c9nrU5fny6wlu1+yrwNFVi4abJ1I10Rc=;
	h=To:Subject:From:Message-Id:Date; b=L6R3FGSmuzhCG+yL8GnFVA97WEkBfclpUXvg9LscuV5nRV8T0XPBZa9tuukp80XCJAPglKCY6h5ww/xRQvxfs27/BkUCn+zLP/7RLXdkr9bPhEUPULsokJU4kT4c6V1iOwL0nkOU3+7C+vFQUGn7i9zeuyi1uFOhh8Ff7SdDIDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLpn0ecc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLpn0ecc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA095C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775508933;
	bh=rusWsUrvGf9c9nrU5fny6wlu1+yrwNFVi4abJ1I10Rc=;
	h=To:Subject:From:Date:From;
	b=QLpn0eccyFrci4BHD1+O8Ag35YtQmgT6B3XPsqbsjbcv2aZ9rbztntzaTXCw1cRS6
	 zpVFLjm5DUyof2o0o4HA5YEUsDmJVoDXeMN8b+Uf0ZROkNNognxCmyHooHyCSk2o6f
	 cXMhTdBQwSYZV6KGLyrgZ8xbIkV9kgs2xVYdZJOshIvxa+7I4gCC/A9F9+5vJqrpZN
	 Fd3QyfTDaPBe9Zwv5pWdvCy5JIQfGrVPdNWDom5s6tLcmDUyPfsVeMbW83khU+ecai
	 7xjQw1mwSLERdAq7m7WlZkFezWnxRghIuaaPj7Uv2SdOtHSEeWXvOU4MeJt5kI2QQI
	 ExERvEAx34mCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAECEFB5168
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550893369.25287.17809487127275653946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90018e278a4ea721ad7a751474597707e91567b537b345226875b8739c38b06d
Date: Mon, 06 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775508933
