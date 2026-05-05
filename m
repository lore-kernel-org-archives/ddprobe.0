Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0638D388371
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777987654; cv=none; b=qgNwnBQ2xecgFgRsGmCZcyPpAVal1w7zK1ZXdCrVIeREba0kTOl4Q/Jk+g4J9u/ikN1EJd2peB5+yR8HTM1Gb9wcg9fRzyB09CLJHhNQO2rKRf2amilYqmI9ATDBggSC2Sl3NFXbLfFjGAm7F2l6eqhjSLAvYQNV6ZTXX0sl4tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777987654; c=relaxed/simple;
	bh=QPnGxrtUB739iiPCmnIwPZ3dgTzKiMZQn+iXos62n4o=;
	h=To:Subject:From:Message-Id:Date; b=ElMWS+dxBFRXf93G9VlcQtnNO79TX/jMgiDc9sku9nY18ETCcH+GaNeoRrpenNiaEZQGDp/N7kQOSORlx7zi0VImfobj8E1TDUBo2yCJbgLmfJp/+XndAd+2/DOOZ6CWrffNbGR7UI4EKZ1du+huaej5qYzSKKEbEBSKn53YLCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExvVwSkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExvVwSkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FCCC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777987653;
	bh=QPnGxrtUB739iiPCmnIwPZ3dgTzKiMZQn+iXos62n4o=;
	h=To:Subject:From:Date:From;
	b=ExvVwSkVWzdsWdIxmoEmvMcBXs4iTZSgYk5jOmm1IWo3OQDDDlXoQl4I/jdb69OsL
	 gJLdrobGfJt6svO4qGfXIXAm2J/ZMnmV9M+77+qkXQDrTsvDNWSQcBaukJYvUZ+mZw
	 aXTEsqp/YWo+Xibkrn8GSggKwbgN3qGRMvOTYApr/TBu7xrxUBqv1EW0guNVewLCL+
	 QhxlVUkm3NyAp28wePr8vj8S04WmhmA0FSp4EgGBvbQzm5m3p3A2xZcHNYItQf9JAM
	 xc54JZ7WI1DvN4LJnfysDhJNRbw+Ppbqc5UYbJAPr5GnhSVDPKbka8PAhkTxdy+udm
	 2X3Ez+HGk5LuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC5CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798765368.24198.10731229215353466693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3877f62043da7878e24a66e690ed473d355f46f948ae860d75f1f8a43710ec4a
Date: Tue, 05 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777987653
