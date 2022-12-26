Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89697E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5DBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672045887;
	bh=n/BWrUnZZKITlBR1W55Yusgq/iYSEOdB/ZsVzjbkhQs=;
	h=To:Subject:From:Date:From;
	b=TzLaxf8IxVNMPZK5DcjNIUO8xLbxwZd6DMjW7EY6Szb+RHea/h9he1x8brXHmOGqm
	 Ge5dLo8kjMZTNeDM3A9ZAxYEElbgd4WGnGA8vZziy/MaxIYSKCH+jPFcmByyCEjAXB
	 EM5Lx73vXX9weVIxRSPnthIf52JSUdL4l4bPW6WjQKPYrMuMoqy6b5ohEVAV/Hux0a
	 h9u8FWokQf49ZbYfos/Ka0q6uZ3UD4XLRwtjoDx2ES5HLrx9rwEupaVqEu+QDySXbS
	 4OtaKg4Tsy9cKPd+XltUbv1RWSmcTnA3KYCo7fGbMYKTKSVbuLPBUYCXbGe4mrqH1P
	 YhKIRRexTkYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EE5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204588745.30476.10813484358820508623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec384b311c180ffa1c19a6d3a11db2ed62292b3ae96cc4a5b25215182f7ab20
Date: Mon, 26 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672045887
