Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D7B4120B
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715527943; cv=none; b=JqmDnOb/+iqFozXX9iupwc05jTXee98eY+9ICpj4Slai2GFQJSh0+2/WKYO0bIm4iIqghRoW3EnRXIEoyCH5lkz4PoLsRVUs3PQw3ZQO7kjkdVe6zEL8cYQyIhfY4uGFqejYGA1uNsDi+00PPxSfTq99jzDBpAQuZg0eJg9CSZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715527943; c=relaxed/simple;
	bh=GG5zk0HSFzJrYrwB3w8fqj0fJR5ivaMSfNdev+Af9JE=;
	h=To:Subject:From:Message-Id:Date; b=ozhWRpzwvAD7TLwtVEr6T4WsRdUzPoKFx0coxANHjT39UqZqiRWxSbhmRTn+3JJNlmYKZuMTQvWWef4Y7Spp7Rt/bREEcHqBpKo1o8zNvR1v5EyTQT2OZv5bJyZo2wsrrg2+FGsxuB7sQjxZt9EyZMhtGPb+h0RSyvDPd8wMHdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYD75Bq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYD75Bq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF025C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527942;
	bh=GG5zk0HSFzJrYrwB3w8fqj0fJR5ivaMSfNdev+Af9JE=;
	h=To:Subject:From:Date:From;
	b=mYD75Bq5g7JfLVMk4meV8uEL8G24pSfzPPlbkYS1NbWKTAb/xG3XuguCETK4GiE+W
	 mxa/hhHdthSx4ORu9f1a9AlaUqiwjQPTiM5zO2kWTRQTWH6jKDEOeVDTUbMlNWpdwT
	 zZ061xsoZnAQUvrPaImEDFG02uOMFr/PvYwAFVQ7mV7D4qgNq4MR2r/R76tjlFUSoC
	 Nu4Ti04ZYhcI/D8+IHrXE1qC3EzazYbhTLa8M/s+2HcXiMP5kX1+MZwnURI00B6j98
	 CALbc82YzZ5SC+V81p6h5QMPHgZ/6I7Vi4l+W3hRRFC4UdO858tR18To6YHB47WgX4
	 7v2A7gos0tGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D6EC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552794277.6297.6339459037831038456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3ebb85536da853fbae67c7a46ed20b04b390465ab678783aab9977da642eb5
Date: Sun, 12 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715527942
