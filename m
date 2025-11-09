Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB502EBBAA
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762709394; cv=none; b=p4mBqJjZH+tI59uivMXso4fqzjMk59EJxIekliWWXnaASIiQTSJYanwhQGBMz0mjz+kB1A40ywIkVH0d1akIx0VwBgZKPEkWAiMEQyHg3yIWNKHcJhY4/cBJqC5hzQ3aQuseUPB5BrMBfLH7z54yL+jv/O1MUvoCGvm1Sww8nY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762709394; c=relaxed/simple;
	bh=XDn21pURvqDEvuDBrsU3Oyp8RvGssrYTdDEybJ374oo=;
	h=To:Subject:From:Message-Id:Date; b=MSOXt9i5kwFW6mPi0REf5HYFt9rF20t9pw7cTN5pSCectLVPwe7+YZmZvpj99b/+W64Xo2AprOrH4q6goaxiKXWRITzuiIw9Ad5HEFaQehwTBx/kIoKLs8MD8Kni/mQmMsDPemBxYohv0SvbYsfKtqPBnjwQmlsR+RP47fY+DoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqkd9nQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqkd9nQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762709393;
	bh=XDn21pURvqDEvuDBrsU3Oyp8RvGssrYTdDEybJ374oo=;
	h=To:Subject:From:Date:From;
	b=fqkd9nQdDA+mI4MUqeSFGaIrqWjin2fGvf3E4givJvCmQnsPwzOo+UVdS8oYBjLIl
	 pCIqRBBRAfc0VIR6H7U5d7gQZvyneP69+dPpX+n2zTp1fgyE7g7z+DO7yZfMLB9hSg
	 N2kWfcTXBJofhB48LMJOPytgz0bBjFWdlL2MLXmHs04VWDsdhAtxqzIy5whW8e48S+
	 isLU2W0oD6swYem6F8oSt0iHOu2VykH4GbZW+NvKnI+nVyDSKtmGbwMsE86mpVrxfv
	 ZXBfDZa+QNJqJdSmfYiPJd/3Xr5Me54B9TpFjhNQLWKyLgNlE5hEuGV9fddhqCZMto
	 e17kzYbk7IRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9D2CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270939360.2440.16119292381218763141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7976cc66dbd72ace24654bc21c23bf894d9611f63854402f04e32a49c2ea497
Date: Sun, 09 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762709393
