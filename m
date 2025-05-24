Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386B67E1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748110794; cv=none; b=j/ZfXuqLhHO/tbwQQrhBKZ51L/IrAXLP5FTRG1qr23L2AjrtCAxbS8TGa5VBMs3oiYHiM0llUps+QonYDfMyaVUNFosRejd3UGbbzEPPkD92jmvDFYbIF2K+L2vWkiserfPbcxsfAyKII3vMqk/RPzR8ngCgpM6ppASFnN1u35o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748110794; c=relaxed/simple;
	bh=KjRr6/CkE+CE1Y9NjUaVasod2NMzsduFL/EJKL2+6L0=;
	h=To:Subject:From:Message-Id:Date; b=Ja6qYuK42+P5jrqX0Y9OkMeOFF5rZfQZ0XYJBPyutuHmwMElz1PHcPq0hGB/FXwcR16xoE5r7kDS6XHG26b6duShoER36CZv/doPT88lRQ9M4AW9bTbVvRRULKn62Pyhz1FL4WIDXijbD92oBpkNvHOTtxF1NKOrJi1/9HjGMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGOqrUqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGOqrUqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7699C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748110793;
	bh=KjRr6/CkE+CE1Y9NjUaVasod2NMzsduFL/EJKL2+6L0=;
	h=To:Subject:From:Date:From;
	b=JGOqrUqPFJhZjiqrQluQ9Bz8cQktMZ8jt/8xfSoD+aAbJYB3t78XAEyhW63XmBrD9
	 f/E9sgYp7Ml3seL4v7G1qhifD5IPLW9ML4UWFHr0C9dsA8cLH+yUEugr9JQCfYKynN
	 EqyL0ZmIWzWuixQYdkpE7QnKhjHQe88xU9Fz5Yk1oeDf9GCJYqiqdoBgwaUPK9RuN/
	 +3WM/VHLkC7qMOYeNKrkOshW9stYT/y/Z5oQkb57yw1ObnETS9IiWiZDbyvdomKL8+
	 b23DAbS8rA2WRtgdiNURuvaaNmzhJoauyGd+u/iOhFIOzGtIpCirLiNaBqIfRZcKIU
	 cS9NAv9dK6wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910ACC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811079357.22984.16453182130392933281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44dff8a1c5dc42ef0171bd4ebc23b1b7a219e3d83770569f8a67152a649a5b87
Date: Sat, 24 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748110793
