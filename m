Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4669D70814
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744735794; cv=none; b=ZlNo1Ww1ToHGzXH4Fa+/1UY3ymE0RfZj7fPNxh59JAMYIGWXKhiCJ9l+hzK2h52LObT6D+/4Q4W2YdKa+IU9gxcOr5113kv13KYXQLWWY+Q155sK/eZmUzD+8TZfiSr4XA7IbLzDcYNAPLpzadpbW8sd76coGNfsJabKbl92i5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744735794; c=relaxed/simple;
	bh=Xeci03mUrY+1UscM72PFl2ylmpAK6HFANHH8yJrE1I8=;
	h=To:Subject:From:Message-Id:Date; b=kg4EYA1MPu+TjV4qs5Dqm0VLAuKeipcq/bfR7u/y45x9ChmiYIy+CyHfkg7QbVsIf0w2r2x2ya6vWe8s3R7uHAqh7dMJleELIpQr8O5/KvJkiDcbpy6GShpOPSfLm2Xs8/yCmE5co5uKu3ojxHTvdMXVzKd8NTPF4lL0byGvZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vgw/Cu4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vgw/Cu4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4E5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744735793;
	bh=Xeci03mUrY+1UscM72PFl2ylmpAK6HFANHH8yJrE1I8=;
	h=To:Subject:From:Date:From;
	b=Vgw/Cu4Mv6YxBGRmUiKmlG7lYW02r9gaZN6yMWIG/N3/UPBvqodNA/QKhxcH8JibT
	 GmdlIsvDhdxYPbLrz2nFhN/w0VsvlfKZ/gz9n9r1gPeLMEvXeMHDzO4O2Ht7Ywnwq9
	 QOGiP+ottaGrxEx1Fj7T769kmgjPaZafeOpSXW5nUbn/2bZZfAozNBUjUSO0SfN7p1
	 AZ12MAMgtkNHf0EHcEiLSc1eoFIOJwb2agYwfiXacnw1iuOJxAVu/TYAo1RGWdH7U9
	 Ypq3naUGyjdDigGwZo0jfpwi36frZ3qKnan4ZdrtSp5+RXeUEtq/I4IjeXU6TNWD2a
	 zuGfNfQ2CNMng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97347C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473579360.7679.4867602208311126400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4b4feee28e5664d8614a71cf45412f16141bdeda18040d594565578cb65465
Date: Tue, 15 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744735793
