Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77EA204840
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746475793; cv=none; b=cozOx3vyQvnkA397MZHW/e7Nudl786xeaEt27mmlBl3Xqg/RE9Gwgwsm6DQAwzbUY2LdtMbr3f+KQzDW8u/pqkdtIASk9OJhMaapd3biQpnPEktu7vgdqJ2nx+ZefPNP0fLocm87R7FbfdX5//Wgu4rN79QVQ1yrFiVYRbD/OXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746475793; c=relaxed/simple;
	bh=+p3QRqZQaFwCZB9nwMd/lMY5VZ7lIit+fvCmAXAmfYo=;
	h=To:Subject:From:Message-Id:Date; b=EN/TtJBnZbj15eS6VicOZ+KBjWJcSnuDz40Wv+JeWjoSCcUTAYvLVLnG9rOt0iohKYwn1BoEfchvaZGnwxsVCCVTPiYFXDZVMAdx1g2qN+WJ5qa0v+RJGlUB4Xw+VvoO4/T7BDmjFZcjV2EWbcTCC/JEF5c3ytCPawu6L3aWE60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0sCq3vH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0sCq3vH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C16C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746475793;
	bh=+p3QRqZQaFwCZB9nwMd/lMY5VZ7lIit+fvCmAXAmfYo=;
	h=To:Subject:From:Date:From;
	b=O0sCq3vHtNoT2syOLn7uxi+G8zEcW8KhV1tkZLTO9BYEUYJ7Xzvz4bkYnurUA3EL7
	 NNzN2DODL8ZgYF2nRnfQA0FosTIGeWsQBaiFnssswHBvPnpldO2nYn2Q5cgmHDDOro
	 1m9/HFkuWQF4dTNkwAOTMZjxoOD/RZy0ao3ed+2mpuRavwFqSh341179EcNlnFW24U
	 P137555sl1hz403RCnrU83KYhDD1DgU8hdVyyzEmhRHGluzTsR3HP/w6EyqO2st/L+
	 SV6P1FqhOtxSOHf/fhvqDVSfLI9ar3TdIfz33Kz0CB+1DASj/Osfki3xwOuEkMw63C
	 FGBHDLVRyTw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38CC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647579357.1129.17735013272786282377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e6a903637130079af8923347419ea3e867f4e87d1a012faea8b660a9762be3
Date: Mon, 05 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746475793
