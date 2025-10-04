Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125DA1448E0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759618794; cv=none; b=KJbzVzi5Nsy0xBIsxNhHAjv/ypO01jYxtaQFAZTDl+ADK9krVISdnOD3TlXKBDZStXq/+TGS5v4d41V7EyabI/3TkM0kBTkEak7kQB+n+etUfbmML6l9pXCDqBfNMD2itkFbTPoq/DmJd/Mjz4wc2d/CAwuS/7ITFzItUIp5lXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759618794; c=relaxed/simple;
	bh=oOmNvrnXhJfK0UPiw1yWhITnQFfH28+J4qZvhnWM54M=;
	h=To:Subject:From:Message-Id:Date; b=l9wI089PtsE1Se7WxjIs+q4YRbOMaY5xpgUYpw/s4wWW8+2OtX/YUf2ML5bLkQGYzugWNJ0Cqcx0emxrTEKoLh71+jjcyfmWJGEsKrrEDDUK4J1eYCcO+8SgRkxADwg6XGGhazymbRBLURxJ0la0KicY+tr2xNpzhcDJ+iIqXZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyarCamn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyarCamn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0537C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759618793;
	bh=oOmNvrnXhJfK0UPiw1yWhITnQFfH28+J4qZvhnWM54M=;
	h=To:Subject:From:Date:From;
	b=nyarCamn2LbersgBEyNVr4xmdDmC5caB6JoWbwCIADUqAVT5l4geT9TutVYtnKyWD
	 4Y959YJFNvlS9p4hRoxHCMcdho4gFwFRj/oyS+uwJ8qkUwotVWXfY60yjPpZog1sjY
	 Qvzgljz96uuWzKexRA6WtDp1I0c+oc2xJhgc1r9ngOo/w4Dn7eyahC8AR+pfE+9Y8g
	 5Dg94/qoOyaJxmAqhXhDTyZIYA6AK76gUwAhehmRkidg18Ab/8S9b5Y37+7c9VJm6A
	 9kGFlOUDG5nHznWwtfCMY8I66YpaBrPQ7LEsZv1/33LySs2nB+gw1Fbcw+7EL7Jmw9
	 75dZM5xV8vUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A9CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961879357.31042.10950255767442705251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3cb9004b0ed711e80a5fc40e57400656bc24ff42e06031aaca4e05a433f745
Date: Sat, 04 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759618793
