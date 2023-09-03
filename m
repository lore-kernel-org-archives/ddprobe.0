Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B92DEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9D8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693717448;
	bh=FMk42oIwGIkeTkP5lK8Y6SvmIn1DFJkYxDkzWOAUDWc=;
	h=To:Subject:From:Date:From;
	b=imdCGNFDMuD1AW38QcIPrT+TKxvoJxFnJJQMecfj2BLRS4i0pPnDGiN4wXDzWu+Wq
	 fB9m/oMpTKBtZkZY4EVzJKBL6SCRjCZZpIt/bkqSwLmSkOg05kCOVuYy/PflFF3VaH
	 9jm3JfyeZmawyCIsuSklBZSuqZclHFYVu598WKQ+8uhOdrkJVVJwyMsMA06X2cBJtc
	 i1plCYw/l0VFzL3DPJ9aG2wrWXyzhpD28QRgt5ANJWV3EeICkheSQl7mS0A3of5K/3
	 N37Qfaf/Lzlwdkmat2unzi3qiJI8KsjapPvE1TFBBfW8FpUVrsgNiJfJYZ6pqIKlHp
	 7ImygR/LsqANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC158C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169371744869.1710.13715043328194477614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac68270b878d1090ac5b395341d98ac866c5083017349ed1ed66f3e7ef725763
Date: Sun, 03 Sep 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693717448
