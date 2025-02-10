Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBB2236E8
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 13:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739192754; cv=none; b=sWnME2UcgVV0zxAjSgBTplWqKpCHrdcKKqf+2TrA3F3xBZtvpD/cGkNneLjVgAta4Pn40UWCs3xLsVQ54k5/7x12SvOlv32mOm5ncW+0G+8hHcecWQLWAxpY/D+pDubD74FQ2yUSRVO185h+6IxSDyRMj+A4O/1CmVgLKMMwH/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739192754; c=relaxed/simple;
	bh=qxsPhnpGoOdb8TakANIGaaLpOM3GupUmsanvzij4FCg=;
	h=To:Subject:From:Message-Id:Date; b=R8w+yZ4IkkeVjQvQAOvPmhDqNeTkw4jgbmy+FS8qvQcdEqrJLn0k3UDg/pd04v8OOjM+7gzbD5DfVwVicEzaX43pIULG0seGNQ+Au2lKvSGs+s7h9/Qg6uRfiu5oqjX5Wda6E3WbJcoc+0YB2DqsKkQyGNcHBPr0zAtJ0X6yCzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ypvz/wmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ypvz/wmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8375C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739192753;
	bh=qxsPhnpGoOdb8TakANIGaaLpOM3GupUmsanvzij4FCg=;
	h=To:Subject:From:Date:From;
	b=Ypvz/wmggrubh7dI4IiuGtGHGSb8ki7fIS1KCRTxsXnYIzTwhH6p3uU6Gk1mR4IgB
	 F3FoYZnMPhANPNrVsje5piNyZoNo0ZOgf0wJcV1pxXYtVS0bHdRqMChJu6AzIMObkn
	 Ljw/+xpgBS7vZvCbQvzPcNOpHrifJNKkGtOFgG6uoJq5RUQksDHD//aNWOA69KyFQK
	 AsVDe6nWyxcmSPM+E4lHqFKlkq7UrAmqekNEjWYXL911fZrtzbUpBqEYsJMacHQVJN
	 fkys+TScfmEho3nMVGhbAOQly4wfhC1ehuwknbx39RZBgHlqGvSpR3Cr52KwkRoC6J
	 5znjhXcxIKk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE96C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919275367.31244.10105454338250435547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafcc37b8e4fdd89c1a229f499b15e68d612aeabe98c81f6ce155d2b582a7554
Date: Mon, 10 Feb 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739192753
