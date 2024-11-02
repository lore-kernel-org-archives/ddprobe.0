Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4067619A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730551554; cv=none; b=DRZ2Y6V0FI6C/gLJeTB5h4aO6s6kxgGHdD7+jyUablwwx2vTD5BdEjMMgwvWS8h39v63o5s7DvDLlSOC8VPeEB/ehJEkqseUvXYt/eZ/kIrr+qFUksPsAMUIdCb7dPa0NX6U+XrzpO8TM2ayc5grc3iSk60BHzMI3noGtTFCbmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730551554; c=relaxed/simple;
	bh=hjnP1czrjsJxx/LXkaNAMaJ/UorWzsgfpK5AUzU5D08=;
	h=To:Subject:From:Message-Id:Date; b=auqTOAR6vz+Dv7UoP0mA/U6OwQqfRG7hbcUvNP0pwSb3KXvEEY0HqPvOgGiscg5E7BSFI0HCWCNBv2ITC7BleTBGD1nujjKrvXFV6dBjzoDalNNnvefodxiqRqR86s61XsmkZth23H5Ievp2n1W9PWagrMUE9G3NJiQaqxFsUTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNWQsxUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNWQsxUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6596C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730551553;
	bh=hjnP1czrjsJxx/LXkaNAMaJ/UorWzsgfpK5AUzU5D08=;
	h=To:Subject:From:Date:From;
	b=XNWQsxUm17fSaVtzf7iZ7pBTZ1qUe10qYug2Aar+h4vVdKLgYF9nij9EonH2+rafO
	 g6DeMUds7Q//+O8bPbZ35mIx/0x1rnK3up4AMj3HgV8OXP+/WVUJ9ALUwh6GXv03dR
	 Egnz9o2lWCdHsALC8OdD2WbgwlyWqsve3IwaChNHXdKwcuAxlsHdL/Dklp/YGDqrt5
	 4PaWzCS1rCyhnnP7oOKKehZ0fDFDbPKMGE2kacamsBEE4Pwx/+/Cr3byls6GZRj+yB
	 SQrPeKx9pMt/TaDOfs5a1KPnM1VnjsIWbHcvJg9ZLDa/c57ApzeAiyBGeeUrsG1hhm
	 2eo3p48Chyvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A173BE677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055155362.3532.18019906235945447867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458354461c78dbb549176cf08aa2106897fe4f28b94e07fcec288deb7fa8755b
Date: Sat, 02 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730551553
