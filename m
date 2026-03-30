Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0C8391505
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774850694; cv=none; b=q57v4E8Uza7xZna61tODjFQsWE+t1+R8m2932GkH9uTX2cJVBHxhw7AA+jnixxLsbsJWlIqlfJgOuqTT+NU1waRTHyTGKnwcuFlPuK+XeC9xmG9PTM4tqrm4ZTatG9tTUPT6COsegNbVnkhFB2xmjZpDXe3tQiS6G9BzTc+raiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774850694; c=relaxed/simple;
	bh=u+LCHlbLOEa/d2jSZmZh7cIPlUP6d19h2dNgdE42Eso=;
	h=To:Subject:From:Message-Id:Date; b=tnk3es4cRN6PeK+kRzj7ZUEYf8h6whfGwl3TEePqLAUmGV+4B4CYOrc+L5Sbhxm2ubtuqZSUCYkID+uC85823cdGoVYrH1L9R5GiVm04hc+LtDGr790FnGS51EcEPa1AqLQyYRO4XwMRDMMzPY2YKDQV2McdAzQ+zx4t13OTWPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbgg9wUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbgg9wUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E48C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774850693;
	bh=u+LCHlbLOEa/d2jSZmZh7cIPlUP6d19h2dNgdE42Eso=;
	h=To:Subject:From:Date:From;
	b=mbgg9wUqTvw4Qc1wofhn24hNocOdD6EhxV0VLDmnYwrgyOmOlR1FwkofjSyT3APUv
	 WC9MM9UZTHv8j7Z1LZNdXv0NMopnPNO+3In8hBdjK3+bWoydnb3QTZRwXYfwe7BC/P
	 bMOgIdQhnJvsYIvwNsLP3r+BlM/1+HdIgKceAlfuSaE+78OdBSXTgC+TwUyOB0pv3o
	 jkE0Of/K9Zw894Hi+yTXkN8aj6ZYIy1O+w6MHBbbsXQUr/YCqPSzlQ4IVULomm8bQG
	 wdM49YwA+V2enkzNCBTyPZNLeO1HrA+kGST4G0ZXzIZv2JQbVOP+o6o76/+3mVhJhK
	 vjpMAc/1mXPJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96741FF4947
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485069360.7523.14904076184011220517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280f187564dca8eeaea275cc6f8ba925ced4ddb540ad8881a807f08b9ef9ac0c
Date: Mon, 30 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774850693
