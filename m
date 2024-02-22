Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDF8225AC
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708643897; cv=none; b=lXpy5yLXvx/Gx/cXUZM6UgXQcgsOF9Mfwve19ZyBV7Qv5QnHJvl6ivfatzc2FpMDM9DMMPCBMkMAxE1+4y0t/qOLc0X8qqANYd0JwW2vRFdXS92xsdavke/pF5ArbJYNrSFfNPTltMCGxlvpTj9z0opg/BMlxSTAjYGVssXtrGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708643897; c=relaxed/simple;
	bh=MNsWefpnhtyz/mTckg2Vz9+gaTnNi4KJEWXQDAU/GbM=;
	h=To:Subject:From:Message-Id:Date; b=Qxuq+yrXAS1XAxnOxiDaWCelGoZXU4brzwV5FJxJsrVL+11SfNJB2RwxMq8r5wgiRxMp/0/JUw1a+PPnQhQ2Wf34NCjgDv2s0sXbXEzIS9LYSe7LwhcBlrlRgX1WI4OeRopKAbC7exQOCEtYhj2hDy6G8SWtJuULoRvzZ8RT2qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1rhyeiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1rhyeiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD45C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708643896;
	bh=MNsWefpnhtyz/mTckg2Vz9+gaTnNi4KJEWXQDAU/GbM=;
	h=To:Subject:From:Date:From;
	b=g1rhyeiOTyuISD2pDcE1xeeufPcPR0VJvCnPQLaipATzA5GpjhFRbAgkgRnNZp0Bt
	 4i6VXWVugNWrMmyUxUsrBaHO2NX1VhsciSTiuAnHIaEoqlKo9xPYVBF2kcMBvzWAqY
	 S+ILoaMydh1oJMrKFr/n3Mw2Nl4nZqg7u/R1S5oLJfzJzuQE+KfgHVxG8AfbIEE27A
	 ftvuh0E98vAa3a8bQbtNGVl7h9wxwi+DDiHZRnHD+FbTT62Kt5oABUuAlyenKoiGqA
	 OfKydLq1NMFYjenwlB/t7/DodHLSjPL7sElTqZI+TyemVCoq4AWXxcyW2+T4kioJQE
	 AGtK7NpPgwD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A08C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864389638.18911.12736193897593258787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954a17c45ecbedb00c5dc088e42e605d57be16964923a05d961315e2caa68584
Date: Thu, 22 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708643896
