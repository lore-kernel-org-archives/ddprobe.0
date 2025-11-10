Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0312FF16C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766393; cv=none; b=nmEU0bZspZPEmxo3uM3b+zeYEUcy1iCflkY5U9uyBvbXXN1Wo5chMlwrXm2TQuuG2Vg69VawIYx4GtrHBWgQeDQ0U08eETmT5C8w3xgOQ4ZscTqAVTAS2F4b58aBorTgVhqgkvpt8yXbXjTE2GF9YxNKvP9MOiETd9sc8dmhx3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766393; c=relaxed/simple;
	bh=C7qbzwlYT6f8K9M5toGk3oQfnI4nnkJk+GZOgFIF4XQ=;
	h=To:Subject:From:Message-Id:Date; b=u4JaXY+WIDv1ebg1X7c101R2pmAvrrmdAkh2c7vqisSnBjBWOMU7p2IZMLpLsly+W5tPyC9Jo93q7Z9UL//KjnoykZqQk9kdFkeqCjLsbPw1feySM6kEFX2xXF7B1VPIMYUBBL+EBUOnGGGPyTQVGquKYEkkD5aMSe+R6XPt89Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwy/wQf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwy/wQf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C65DC19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762766393;
	bh=C7qbzwlYT6f8K9M5toGk3oQfnI4nnkJk+GZOgFIF4XQ=;
	h=To:Subject:From:Date:From;
	b=Cwy/wQf1B4BdTpimIEJ1xC7tUc8+Ammq4Hdzlnvk9N7CMzHGwWb7+fLdwb92TNGg1
	 ldOr0GmI+WCGNLc0K1WL5RJxxCjaoJq8jh1GEG8VssfN5hZP2pPw4a2eAMhJzmy3qj
	 otgGiw4eUAU5cZv4aGs0rXaespSQonBQwRH2yIKi3ZIvg3phJV+hrye2i5MiKjHG2L
	 0RkOutc1YlpVBywcv2a70KIoKaIXMPB8WWjZK0R314cPtyIJXggvYv+iL38tILQMFi
	 KuDUMFgOS/4bYkmwVWRxo9K4RnrkQQUlF+Lfy2il5lq0lyP8iOk5O5mMg5TSQgA47x
	 RI/XsU+NrYIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012FCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276639358.20273.10508964785551853243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d6644d689ad483ac5313812d9f901397a74dacc12774d9f5ed3880065b254b
Date: Mon, 10 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762766393
