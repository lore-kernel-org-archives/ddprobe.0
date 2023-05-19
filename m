Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A4F3D3BA
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30E5C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684538286;
	bh=anwysBD2hB743ov8zGAtEUPFXl+uzACeKV2ckdHcY6c=;
	h=To:Subject:From:Date:From;
	b=OfZFWjKpVaBrq7gP6We6x64hm6nNe3MdZhTiSJ8lyPcK70YSUIdIIo8f+4+l+wEtl
	 yLy1Ax9jI361i2uVTO5HWgtGqTDMEaxS6Lszk3WxBOzqqx9gYFMpV2zJTQRVC0iDW0
	 VAPj4h2brhkdBddvZ0bjEo0k8MG/NWzS0A0mjoDVvoz2W8ysoXlmT0HHb0Z9Xl1MCR
	 pc8MH8OCn1FZynL2bnktd/Ikz/hGhrrj6V0YSXm5GzT0BWuu8sUyX82tQh5a3RNccd
	 xjCCckOfMmS3ncpEVeAPOVSX9BtPAP+NTJk9ibT/M1e6AXh31A7EdVVAjXP/k340ME
	 Y8ictegahcRPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D185EC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453828584.32725.16672603354493524333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426eacd84d3491dd7e2905a50f17965a729be1e037d65020ed10dc4c68c99200
Date: Fri, 19 May 2023 23:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684538285
