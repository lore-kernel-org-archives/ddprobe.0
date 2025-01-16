Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6E3D97A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736992554; cv=none; b=sq512a2nmDiRlIAqvyQU4aFOvBBlrMWkVP67ap4XJQ0BT/gHNdqjtsW9XNCvcPUtPkvlg+4D/UchO/gxsbs+/2I4442dnNJQTJL8wU16mC+rPzH/UJgVs8YVY5mqQl5s0EkKgmxeMD4jqKLaTXBpOG+7CyhJLYZaQ33AedrHxSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736992554; c=relaxed/simple;
	bh=/hVJiLobzFrFHbPvxfBwumNnFxZlkhCEv3Js0rngM2k=;
	h=To:Subject:From:Message-Id:Date; b=FPxzlDCOS8ozzI5iGQ/pqHN7/z1821wHAkywC4dF3aKd42IG0llTP/AymL45P9xdhTOO8Y8zjTzdYCBPjaCH1f7UmEeEI0jR3KAQnmKbgwqxEgBYd5MqfbCUP8JqdNFpdmO5szu4ZmLaHKWwlsxBuU9IlXGpa1RFWb/bFe8niIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtMZ6F8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtMZ6F8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EFFC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736992553;
	bh=/hVJiLobzFrFHbPvxfBwumNnFxZlkhCEv3Js0rngM2k=;
	h=To:Subject:From:Date:From;
	b=AtMZ6F8zMVFAIw7Wr6DP0lbg+5+j7F8/XNOzcXi+ZwDpGoVQgrpN0+Hwl700umfo6
	 2Rx5NYkBsQW5tdDVBTsnxEzJEZuIm5kGP7TbDRvM6v2FllBFF/tkq0swQ1gDYMx5Gt
	 G3lt3Xp1k7JT3Lioahn0DELcwBJDI21El/Ynew2cKEF37uppT/eVUOce9UlsmaR70V
	 9bs/41YoOMNfNtvv+AyxJfcLGeTj+7MS3P7VoCpPyGSFPsd5atCUSk/qQ+T8abIvaX
	 3Md2eM0j5rnbYpKmUcgKs/C/Hc5W8/qiASiCzNo9iZ11Z+6Yw51LtiwOTMlfjKvCC5
	 YzS8d7zSPxy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B84C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699255362.21431.15226621229977309695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d827d16955adac32850af0436fb26c74ed0979956e929a2212c9607d4e9b26f2
Date: Thu, 16 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736992553
