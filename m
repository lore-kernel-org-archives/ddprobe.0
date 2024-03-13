Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825763137
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710350897; cv=none; b=Cud63Cferi6IQCNQZ+NyK9/cu/qbepuBVTibce3UDsqsxw3MDG1O1nKgThinCArIC6forxXwC6o/6DDdYu47s7o/+Jt+onNN1rxNRrPPsvC5bRlrs4J1jz2bKybAXWtg2xQMoj8t6LUf4DhD4bo7iULQXMLEiaqFEXoaOaGXtys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710350897; c=relaxed/simple;
	bh=Ac5Sp7YR3A5w0cO7BLYV6ZH3EhzQ3DiNN2qB/D2PPwU=;
	h=To:Subject:From:Message-Id:Date; b=SYIr9ZrDtfwyNo+HnjWBxD7RU16PK3HtrHD8+DsrZqojdgS9PW6p+1wm56Bjckhw/jcpwNxWt7xx5012j01sJcOHbxKi4/NTIppH1Mrp31XQC3zpy5LfGjM7JHYIUVgXS6sv8ybPBrTvrPbmOGKf+4M9HSP0fNHgEenA/VFNNvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh4gVrAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh4gVrAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2E3C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710350896;
	bh=Ac5Sp7YR3A5w0cO7BLYV6ZH3EhzQ3DiNN2qB/D2PPwU=;
	h=To:Subject:From:Date:From;
	b=Xh4gVrAN7jGot2EOpNO8BTv3Xpj2k5byUhyyTCeCL4WLQ7Ixd7aSA7egoVxxpKh2S
	 fbQq7/bfjXn6jF1ycBS6iSxrpwAvtfX1UcRhZQ7wNtzN8zT1f3s5LtqLvOEzdR2Fj+
	 ru7MvRPT/qgzflNhArKK2hQkeZVkO+3QqAjwJ8xNnSqoSOQkiVS1IBV2ASmN/fygEf
	 uYxOGOkChdJGhLz4zHw1d72ME2HaF1ijxgGysEgK7nyLZiRfs7z+uQiMcZVa0QD4ZJ
	 hfN3YWBfyCPWxpBVw3t4rM/4Hsg777bBdLmkQttbU5GT2QJFxtDpKDxbydHTpKxho4
	 d/FteaQoi7nuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FFCC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171035089638.11275.528675214841011628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5aca87cfd4acf6889ca6019d4af5acbc3d1d29d81ad88056e67b9e7a259286
Date: Wed, 13 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710350896
