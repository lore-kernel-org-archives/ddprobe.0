Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F6928E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D858C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669549254;
	bh=asM0Q3C1gPzwMwjY6zA+D0PW10gJcdWlF0zvZTup484=;
	h=To:Subject:From:Date:From;
	b=KzItzvQ8FyHDQcNnHZ1i0l3BmWbZI6mWhtLnCvPUDPb7dIic7lHLF6ddQYVbaraT8
	 TTftDtOlxqfsIRliVaZwrskb2unaBzyoYVTKmlPUjkm5qGBVIpzHurv97ibsLkKEVX
	 x4L8Dvmqu9iDCs+HjUbN1yaCa/df4OOPsAWiIVsBFoedep9jmHiDtq2dRWWfo6pXDF
	 CuyGEN/oQSTVbn/UnRm7UvsGVAjW9t4nkdyELZniUyoxFJu2JEHEVyAHpDFE4qEZqh
	 9yfRq8fLMVObhss1YSO8f+oJigm2B9hlL7Bk4H7CIhlIywUfqVig/7qg1lEznce9zE
	 on/44Naktv8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64498C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954925437.32549.7300391187789976714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f95ee74f5991d687e032b07bb50778ea53ed0eb28e1d776aeaddb7161d0004a
Date: Sun, 27 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669549254
