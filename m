Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1717917548
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732557954; cv=none; b=B+Az1uXLF9bUg92h229Wa+o6NuKiVbZR4/SmLnxIcKgnsrfCnmA8vOZqlhe5IQk1/ttTQu65lCscr/h+sqc71TMpxa6JugVXwYevPJhT7t9kMO1iKZW54yJdkSy+Kji0c0LBvONjOaqGJyYjWOoCnU4U+yNWlpu2fYyNn1bnOic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732557954; c=relaxed/simple;
	bh=tMyLxDDrsZnhjbC6Wfi3R3pmQ5DktQUSuZpyTceB2Rc=;
	h=To:Subject:From:Message-Id:Date; b=G8u+rp8sHfb+op1R15PnajnGLXUxPDuh1vhDwYjKb5EGTRJDYDNp/inuRCxtIMXzcSw7Xhu2m4v4cioHID1gk0hKwzBhHat6F0Uze3C+A7/zQNtDJa0i5aUCCrArkYxi1K76RSkp3HF7BN8L5vmQLc7bvMyUXwjDItjwK/2IG0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E89L/p1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E89L/p1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A7C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732557953;
	bh=tMyLxDDrsZnhjbC6Wfi3R3pmQ5DktQUSuZpyTceB2Rc=;
	h=To:Subject:From:Date:From;
	b=E89L/p1rN+br8d/8v9/vZsAw/JRDlj8sbWBc0yaQI69kn3pDw3nHxIrDvtA+wgzsT
	 Ye5Qo2lyrfRrhHk5scn0hbvqCk3wwP0QjrTNHDSKcApYqby17PSSFPNQT56k7x5cji
	 5Ry/qgSuhmGGAw0nGBcT3A4DHT+592W9k+RJk2LyXTYaUZfBQ3LHuITn7Iz/XfSb7i
	 rEujkuLmREaKkG4+DdsdDQQtOXnwBAWwrBGDb+1ifVt1xSCfe+XzGPffHsfqCdgXFR
	 AbNy2jZUt/nyy6Jz/omFUpwa1DhY9RxqyWiIliB29piH5RKWwGu1c/+ccnrlSKWGzq
	 ATDlS88WZGejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941ACD58D74
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255795359.9139.4026684471633375005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9686182d9b88805308a85edb318572fb908801cd711f1698cf2c09d89cdb5cd5
Date: Mon, 25 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732557953
