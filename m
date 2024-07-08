Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B7F19B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720401983; cv=none; b=Jf5o1tYuxfWOlnVHZwq0WO63B4wQ2htZsA7hHH84eV/C39JktoNYau+NmpOYZO+KLPb3hsDmjfc5lnCR93DFJncp+HEI5zu/DKYYQGlKnh8+JkztxiFQPnlvOlxXZvLVqrkQwnQ2pOb/OOcsphi3OXIDZ/mmiusZTLc0gPVHOQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720401983; c=relaxed/simple;
	bh=VCgLBHRHdYio/GWviC24AQoCJQ3EpKIKlCTKFaxCkbU=;
	h=To:Subject:From:Message-Id:Date; b=gFHDi7dwQ5ZXjHEa9GoMtq8/fDYBaIMFoRVLGNL5BmKxcGjJZZLSmH+N8bWRtNEPU5zVljeADPzaWDhAaQYG0WhdAs8c5kYihV3JmGEzb3C6M/tPE1Z/xIy/Q0Q5nylcXJVzU13jDsIs8GW29IM5Py9o73wslo01IYpXw7vd72Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXjuM/d7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXjuM/d7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA4F5C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720401983;
	bh=VCgLBHRHdYio/GWviC24AQoCJQ3EpKIKlCTKFaxCkbU=;
	h=To:Subject:From:Date:From;
	b=aXjuM/d7X48xKV2Ybm0hsTetTuYHg3oEk2pe9bg94hxc8mKrYAf6deQXgxrcPEhR/
	 rjknZ3jQ1BA8fescCS9uGq45GOp4aSWbDJdZucluccxbgLmFFT7h0LTBSFF6ZnFqr3
	 4NQ0K6uVqPOA5C6RdHmlGDpaSneXkKUep1/fZ7ZYu8m3/HE6p5mv/HaCV9QFrhTba9
	 MvIBxj9oqmgQskQxHNvD5hIVnCbunnDG3rrpcPfzXdMkfAsPQTZjDajjdZ4iMI427J
	 +g8OdiW8bCj0Ow7VATRt3j3WBWyUDq/yMBmKVPwvimyKM6OQdcV65dxusIF0Wx5u6b
	 xvwK2XdpQf02A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5915C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040198282.5397.8442676636979745354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85ae03d1061cd17a42f577838c45875de18fad45b881e1e251b4fc604711c2e
Date: Mon, 08 Jul 2024 01:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720401982
