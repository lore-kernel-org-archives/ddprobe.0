Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DF21873
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A28EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673516487;
	bh=1z9DSb5p/1HDR1ftl5Je4xHjdkC7ko8wXWnUQYjbscU=;
	h=To:Subject:From:Date:From;
	b=o6TZvh0ZMlj17bn+6KwTsWlJUue2QiX/B2xg/YNpnVQQiivDgpe2S4FDHvzbLTWPj
	 yq29JuXlHN20PBNEEo7swvKdWDvHf99hN/IZwJUFHIK5MRNocGV57KU0fr3odBsr94
	 CiDTa1ubM9alkXlneV3E6kZZ/8+/zKuBTVw/yQkblH+Os72obCrzPr9EaqlPnZ/UJZ
	 9FtMdc5tIyf+KTZH2h7MPO6I1uUsLcHQtz8d2cSwUDGjaGRSvglw+FWPquSwqm4Oc5
	 +EiU33Ia7wUUte80ff3GljG2kLlEzQRbSfk2BDq8x60ZI5OsB2nmnoz3vs9hVR84Ca
	 JeDTU715QLyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D9DC61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351648738.4660.4375055101364422663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18eb21442959f4859395c5d4a8228645d8b64a6c36efc24489689a8e95fdd91
Date: Thu, 12 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673516487
