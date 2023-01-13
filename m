Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA8636C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0B0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673574087;
	bh=j0hlxBMiIb9dCDDcmOx1b0cQdf1k76nUSpW7y56gNCo=;
	h=To:Subject:From:Date:From;
	b=RHiydUl51yQzR77tB0apb2wejOg8dLluX3408QiylrP5MntSfzjq6T8L8w5kJ/7C7
	 WNMKem4JMjAmvCRLGbJ3rib2Rco60UHC9Rxk33hA91dzNyByveCSvLvUWWx7+QkOXN
	 a4JCrqHk1a6I1WjZ8o6uyySEF4vcidr+kvl8+DkZPkceRp8eJbP6Zasi6836HbvpVb
	 GSGG0j+6FGmWT5QBlRPrI5boT+JHdvbKoHTSCIo3X9Vap8IFo+/i/E+RaZ8pG1J2VD
	 29Hmu2SRMokETsMx5BJlGEIbMewlKvkd57pVcAbeR7EUet5ftJc8A28xTNgpiuhqLQ
	 596n0aCLV/03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62662C63797
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357408739.31195.6588180895898476095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9782449ba485c136f57954c2a17cc05a6ebf04b8d8459621faa69876d5699bea
Date: Fri, 13 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673574087
