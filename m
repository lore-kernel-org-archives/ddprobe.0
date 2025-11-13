Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6653385AA
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031594; cv=none; b=OR3QxyQfnsOB9dplYD6Vy96zJ0/j+8Nai/XyjY3ND4EAFCJA9T4d2RmqEHBah2M4l0X/Zb6Dtvol6AxzYsnZIbFkCvuGyKjJckBH87TfmnFnkHqs7lUvZQ22NC+sUj3g40B+vHrZfjoy9I92kJu+GKzfbmFD+wpFljWw0MnDhfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031594; c=relaxed/simple;
	bh=aEjeVuxKj0EAs/UFeguPm7gVjXa+vTUuBsjJcgRNHH0=;
	h=To:Subject:From:Message-Id:Date; b=pc2nqTV3c6Cuz49Zlh5Vy1L1+csOUh774NqoDssexpXeUmA8C8bWlbUmS6vBkvlmgLkWtAEzhdLsnG/X4OAEY8e/iiYsd9uYwzbtLh1AkF1cmAobxGXz/kK2trLi7e6mJCnuaVDP68nhaohC7nW3/Y+pOD5FJHhrWGPOjasaOsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1PUd/L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1PUd/L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA32C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763031593;
	bh=aEjeVuxKj0EAs/UFeguPm7gVjXa+vTUuBsjJcgRNHH0=;
	h=To:Subject:From:Date:From;
	b=M1PUd/L61oUvqvRUMX+8dVhb3dW97MU6DAARGLnfxE+CuhWPNlsDyfBhBygmf5yxr
	 aFlpznTu8OQonkLNVkSJ2Njl+g6PubOnREE+t5lHrWWSEbOcudh6I1hqs6lwLk7DaK
	 Ybd6z9Y57sT1WLXoRJO0LJ3Ompv0U4CurVV0mZ7h9bH6bRAUPeSIJO/qc5goOJY1xh
	 2BpjGAJd9a8v6bAY8pag8wCyUssqUQRGPZNrI6QOwM3uFQeur9bq9YDctAUdOSuPI6
	 /7Gq7MBLYGxw4zsQaxsmtUIOfVVf7iQ8zB1tKUjnF9jR2z9njwaK0Ye7+W7LvGEdU9
	 U/Uo0lKmo4I6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6BCD5BC2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303159358.22925.661393212688535289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2f166542395f8d52b7e233368b03b329c473288b9a827c91aab0c9b933f6c4
Date: Thu, 13 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763031593
