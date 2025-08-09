Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121F027B4E4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754716794; cv=none; b=Eq/+12Xks+wbpa6Stvg9KMg6/pKAcPPV9hlsWsO90OvgBqKdhc4ppJHEeswU7269YPPVNxsOvfCHzhZFqvxwEqQlcDbIl2JrRXzZ5bUaflwhh0xpfwt4JwBvfDcLncEDKAZp6qcYueunUJDMXLUEkGU0xl1PkxrImkZ0BhOBk1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754716794; c=relaxed/simple;
	bh=NaSLYFSwXzOaMbPC6mZgLYJ2vJd2XZ6GTXzwObr7UGI=;
	h=To:Subject:From:Message-Id:Date; b=ghLwklRgh2De/Zb2RII9NkL3L+WgXL8MB79BlZlfnJOEs40xha7UmuoyDh0e19SLPjoYjg4C7H1k8hHDa5kbI/fDwF79GGoi8tuzfGCYAaD4WmMzdpLaNC7Vj99I4SC4Tw278oYRIQ/zFF39qMjj+j/6Pq2ew52pq4f+deKxX4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRyKZX3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRyKZX3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A0C4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754716793;
	bh=NaSLYFSwXzOaMbPC6mZgLYJ2vJd2XZ6GTXzwObr7UGI=;
	h=To:Subject:From:Date:From;
	b=RRyKZX3DVfAtmbbOTpqMypW+uHbZjjd8O9nWb216KOoQkX8190zQ24fIl9+FUnCyd
	 duVtBqJr4LmhyIRNPIl2DUQV9d5rh8F/oaTy4zXSDn1mkevIG1ZqAbdkVH3EzSDpSX
	 0sErktjxCoWyoNNHNMFI5i9EjIj3zh3F5qu8DEvhqWu3TwSWXBDJZ5wrZpAYyE9FHP
	 OvrnBYjcr21lXWFKVYZ3eN6mb4T8/+HWuP6HWhmD0XzGvIXMsFJKe701xEI7DlHZTB
	 x8Oc5kQr94Su6drd9nnBNnomBlX34m/gELpPWeNSEl3MSoeekVmVIcvKsKMAVAKvAO
	 MsUBfJoYYKpEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D7C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471679357.28011.10471372508391868038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817b8fdda69545632378d6c5c7da822c50b9436e28d7dad7fb1ae15df930de60
Date: Sat, 09 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754716793
