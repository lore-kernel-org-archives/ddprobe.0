Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194139A818
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775778454; cv=none; b=AUG2PNNjxQxSSDqhFPjvYyzLCfr2ydJSLK/eMlQiZ3b9EyFLTVXF3Yjrds+3wxfMMu34UpBDfyrSwGbXD9Lmfnyhw/wm5jBR8r0/m4f/9IDDx240b69qnBtvUJ/FfyQTdDdVeGRUOz3Dw2+DupCqRx8Dp7Zv/zOZJ6kKV2+N4mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775778454; c=relaxed/simple;
	bh=TkOI+IES4FDkta9kGOBVU+Hb+IDxKg/K1ctUKAYm16Q=;
	h=To:Subject:From:Message-Id:Date; b=nCLhXOqT8lCxzrV2SImCXFXXaBjoI9j/wsE6xMacV2p1fVX+QD4pK79F7QKsOd/siGChZaegXAUVX1r8atqeeLRXlXqO49/uNgwB9jpnVRDyDzmdmMssnwlnQESyqPFKJkHIj7yh23RE67QMNkQVwHSsd5m8lHAZkkmu5T4PtdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNkQenFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNkQenFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC70FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775778453;
	bh=TkOI+IES4FDkta9kGOBVU+Hb+IDxKg/K1ctUKAYm16Q=;
	h=To:Subject:From:Date:From;
	b=vNkQenFRTvfu3mK/1QFKbupKo8fQZ+jezhH+EtI6FSAdVw1zqG5fGM2/Hd4k29xSs
	 QI4vUf2/CVVC4XJ1JISjCno50YqWtQvVqgUy/GuRsPz/ZgaUxDj24FbljWDIJv5YzH
	 OfKoL2SS8ba5WK+6kYTFnSp4F5J0kMXeEQ+mcnD7/1VLegZqmBXPHBcgipwqxLJ1b6
	 r1VCQCb9zcXBTHSb0xlHpobT27I9jDwAQi3fxojWB1GL18osOHzLXb4EjhBECFAqMG
	 96YbigBVGho75bzvh4APAAlPmCmgzNF9UaHDcVO//38k+0PgSg8MCzeaREOaVgkNTT
	 Tdpjuh1I4RXrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4BF36B97
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577845368.30143.297721879500584053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7c7c985960eabddc970a7e6abd4821c69954d09e2ac4082ed3f08505110514
Date: Thu, 09 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775778453
